
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {char* scalar; } ;
struct TYPE_28__ {int type; TYPE_1__ data; } ;
typedef TYPE_5__ yoml_t ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct passwd {int pw_gid; int pw_uid; } ;
struct fastcgi_configurator_t {TYPE_7__* vars; } ;
typedef int sa ;
typedef int h2o_user_buf ;
struct TYPE_27__ {char* base; } ;
struct TYPE_29__ {TYPE_4__ authority; } ;
typedef TYPE_6__ h2o_url_t ;
struct TYPE_26__ {char* data; int dispose; } ;
struct TYPE_30__ {TYPE_3__ callbacks; } ;
typedef TYPE_7__ h2o_fastcgi_config_vars_t ;
struct TYPE_31__ {int pathconf; scalar_t__ dry_run; TYPE_2__* globalconf; } ;
typedef TYPE_8__ h2o_configurator_context_t ;
struct TYPE_32__ {scalar_t__ configurator; } ;
typedef TYPE_9__ h2o_configurator_command_t ;
typedef int argv ;
struct TYPE_25__ {char* user; } ;


 int AF_UNIX ;
 int H2O_STRLIT (char*) ;
 int H2O_URL_SCHEME_FASTCGI ;


 int assert (int) ;
 scalar_t__ chown (char*,int ,int ) ;
 int create_spawnproc (TYPE_9__*,TYPE_5__*,char*,char**,struct sockaddr_un*,struct passwd*) ;
 int errno ;
 int free (char*) ;
 scalar_t__ getpwnam_r (char*,struct passwd*,char*,int,struct passwd**) ;
 int h2o_configurator_errprintf (TYPE_9__*,TYPE_5__*,char*,...) ;
 char* h2o_configurator_get_cmd_path (char*) ;
 int h2o_configurator_parse_mapping (TYPE_9__*,TYPE_5__*,char*,char*,TYPE_5__***,TYPE_5__***) ;
 int h2o_fastcgi_register (int ,TYPE_6__*,TYPE_7__*) ;
 int h2o_iovec_init (int ,...) ;
 int h2o_url_init_with_sun_path (TYPE_6__*,int *,int *,int ,int ) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int * mkdtemp (char*) ;
 int spawnproc_on_dispose ;
 int strcpy (int ,char*) ;
 int strerror (int ) ;
 int strlen (int ) ;
 int unlink (char*) ;

__attribute__((used)) static int on_config_spawn(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct fastcgi_configurator_t *self = (void *)cmd->configurator;
    char *spawn_user = ctx->globalconf->user, *spawn_cmd;
    char *kill_on_close_cmd_path = ((void*)0), *setuidgid_cmd_path = ((void*)0);
    char dirname[] = "/tmp/h2o.fcgisock.XXXXXX";
    char *argv[10];
    int spawner_fd;
    struct sockaddr_un sa;
    h2o_fastcgi_config_vars_t config_vars;
    int ret = -1;
    struct passwd h2o_user_pwbuf, *h2o_user_pw;
    char h2o_user_buf[65536];

    memset(&sa, 0, sizeof(sa));

    switch (node->type) {
    case 128:
        spawn_cmd = node->data.scalar;
        break;
    case 129: {
        yoml_t **command_node, **user_node;
        if (h2o_configurator_parse_mapping(cmd, node, "command:s", "user:s", &command_node, &user_node) != 0)
            return -1;
        spawn_cmd = (*command_node)->data.scalar;
        if (user_node != ((void*)0))
            spawn_user = (*user_node)->data.scalar;
    } break;
    default:
        h2o_configurator_errprintf(cmd, node, "argument must be scalar or mapping");
        return -1;
    }


    if (ctx->globalconf->user != ((void*)0)) {

        if (getpwnam_r(ctx->globalconf->user, &h2o_user_pwbuf, h2o_user_buf, sizeof(h2o_user_buf), &h2o_user_pw) != 0 ||
            h2o_user_pw == ((void*)0)) {
            h2o_configurator_errprintf(cmd, node, "getpwnam_r(3) failed to obtain uid of user:%s", ctx->globalconf->user);
            goto Exit;
        }
    } else {
        h2o_user_pw = ((void*)0);
    }

    {
        size_t i = 0;
        argv[i++] = kill_on_close_cmd_path = h2o_configurator_get_cmd_path("share/h2o/kill-on-close");
        argv[i++] = "--rm";
        argv[i++] = dirname;
        argv[i++] = "--";
        if (spawn_user != ((void*)0)) {
            argv[i++] = setuidgid_cmd_path = h2o_configurator_get_cmd_path("share/h2o/setuidgid");
            argv[i++] = spawn_user;
        }
        argv[i++] = "/bin/sh";
        argv[i++] = "-c";
        argv[i++] = spawn_cmd;
        argv[i++] = ((void*)0);
        assert(i <= sizeof(argv) / sizeof(argv[0]));
    }

    if (ctx->dry_run) {
        dirname[0] = '\0';
        spawner_fd = -1;
        sa.sun_family = AF_UNIX;
        strcpy(sa.sun_path, "/dry-run.nonexistent");
    } else {

        if (mkdtemp(dirname) == ((void*)0)) {
            h2o_configurator_errprintf(cmd, node, "mkdtemp(3) failed to create temporary directory:%s:%s", dirname,
                                       strerror(errno));
            dirname[0] = '\0';
            goto Exit;
        }

        if (h2o_user_pw != ((void*)0) && chown(dirname, h2o_user_pw->pw_uid, h2o_user_pw->pw_gid) != 0) {
            h2o_configurator_errprintf(cmd, node, "chown(2) failed to change ownership of temporary directory:%s:%s", dirname,
                                       strerror(errno));
            goto Exit;
        }

        if ((spawner_fd = create_spawnproc(cmd, node, dirname, argv, &sa, h2o_user_pw)) == -1) {
            goto Exit;
        }
    }

    config_vars = *self->vars;
    config_vars.callbacks.dispose = spawnproc_on_dispose;
    config_vars.callbacks.data = (char *)((void*)0) + spawner_fd;

    h2o_url_t upstream;
    h2o_url_init_with_sun_path(&upstream, ((void*)0), &H2O_URL_SCHEME_FASTCGI, h2o_iovec_init(sa.sun_path, strlen(sa.sun_path)),
                               h2o_iovec_init(H2O_STRLIT("/")));
    h2o_fastcgi_register(ctx->pathconf, &upstream, &config_vars);
    free(upstream.authority.base);

    ret = 0;
Exit:
    if (dirname[0] != '\0')
        unlink(dirname);
    free(kill_on_close_cmd_path);
    free(setuidgid_cmd_path);
    return ret;
}
