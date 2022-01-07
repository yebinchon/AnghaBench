
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int scalar; } ;
struct TYPE_14__ {TYPE_1__ data; } ;
typedef TYPE_2__ yoml_t ;
struct mruby_configurator_t {TYPE_9__* vars; } ;
struct TYPE_15__ {int len; int * base; int * member_0; } ;
typedef TYPE_3__ h2o_iovec_t ;
struct TYPE_16__ {int pathconf; } ;
typedef TYPE_4__ h2o_configurator_context_t ;
struct TYPE_17__ {scalar_t__ configurator; } ;
typedef TYPE_5__ h2o_configurator_command_t ;
struct TYPE_18__ {scalar_t__ lineno; int path; TYPE_3__ source; } ;
typedef int FILE ;


 int compile_test (int ,TYPE_9__*,char*) ;
 int errno ;
 int fclose (int *) ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (int ,char*) ;
 int fread (int *,int,int,int *) ;
 int free (int *) ;
 int get_mrb (struct mruby_configurator_t*) ;
 int h2o_configurator_errprintf (TYPE_5__*,TYPE_2__*,char*,int ,char*) ;
 int * h2o_mem_realloc (int *,int) ;
 int h2o_mruby_register (int ,TYPE_9__*) ;
 char* strerror (int ) ;

__attribute__((used)) static int on_config_mruby_handler_file(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct mruby_configurator_t *self = (void *)cmd->configurator;
    FILE *fp = ((void*)0);
    h2o_iovec_t buf = {((void*)0)};
    int ret = -1;


    if ((fp = fopen(node->data.scalar, "rt")) == ((void*)0)) {
        h2o_configurator_errprintf(cmd, node, "failed to open file: %s:%s", node->data.scalar, strerror(errno));
        goto Exit;
    }
    while (!feof(fp)) {
        buf.base = h2o_mem_realloc(buf.base, buf.len + 65536);
        buf.len += fread(buf.base + buf.len, 1, 65536, fp);
        if (ferror(fp)) {
            h2o_configurator_errprintf(cmd, node, "I/O error occurred while reading file:%s:%s", node->data.scalar,
                                       strerror(errno));
            goto Exit;
        }
    }


    self->vars->source = buf;
    buf.base = ((void*)0);
    self->vars->path = node->data.scalar;
    self->vars->lineno = 0;


    char errbuf[1024];
    if (!compile_test(get_mrb(self), self->vars, errbuf)) {
        h2o_configurator_errprintf(cmd, node, "failed to compile file:%s:%s", node->data.scalar, errbuf);
        goto Exit;
    }


    h2o_mruby_register(ctx->pathconf, self->vars);

    ret = 0;

Exit:
    if (fp != ((void*)0))
        fclose(fp);
    if (buf.base != ((void*)0))
        free(buf.base);
    return ret;
}
