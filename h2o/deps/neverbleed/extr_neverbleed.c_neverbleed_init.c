
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {char* sun_path; int sun_family; } ;
struct TYPE_21__ {int daemon_pid; int * engine; int thread_key; TYPE_5__ sun_; int auth_token; } ;
typedef TYPE_1__ neverbleed_t ;
struct TYPE_24__ {TYPE_1__* nb; } ;
struct TYPE_22__ {int rsa_verify; int rsa_pub_dec; int rsa_pub_enc; } ;
typedef TYPE_2__ RSA_METHOD ;
typedef int EC_KEY_METHOD ;


 int AF_UNIX ;
 int * EC_KEY_METHOD_new (int const*) ;
 int EC_KEY_METHOD_set_compute_key (int *,int *) ;
 int EC_KEY_METHOD_set_init (int *,int *,int ,int *,int *,int *,int *) ;
 int EC_KEY_METHOD_set_keygen (int *,int *) ;
 int EC_KEY_METHOD_set_sign (int *,int ,int *,int *) ;
 int * EC_KEY_get_default_method () ;
 int ENGINE_add (int *) ;
 int ENGINE_free (int *) ;
 int * ENGINE_new () ;
 int ENGINE_set_EC (int *,int *) ;
 int ENGINE_set_RSA (int *,TYPE_2__*) ;
 int ENGINE_set_id (int *,char*) ;
 int ENGINE_set_name (int *,char*) ;
 int NEVERBLEED_ERRBUF_SIZE ;
 int PF_UNIX ;
 int PR_SET_DUMPABLE ;
 int RAND_bytes (int ,int) ;
 TYPE_2__* RSA_PKCS1_OpenSSL () ;
 TYPE_2__* RSA_PKCS1_SSLeay () ;
 int RSA_meth_get_pub_dec (TYPE_2__ const*) ;
 int RSA_meth_get_pub_enc (TYPE_2__ const*) ;
 int RSA_meth_get_verify (TYPE_2__ const*) ;
 TYPE_2__* RSA_meth_new (char*,int ) ;
 int RSA_meth_set_finish (TYPE_2__*,int ) ;
 int RSA_meth_set_priv_dec (TYPE_2__*,int ) ;
 int RSA_meth_set_priv_enc (TYPE_2__*,int ) ;
 int RSA_meth_set_pub_dec (TYPE_2__*,int ) ;
 int RSA_meth_set_pub_enc (TYPE_2__*,int ) ;
 int RSA_meth_set_sign (TYPE_2__*,int ) ;
 int RSA_meth_set_verify (TYPE_2__*,int ) ;
 int SOCK_STREAM ;
 int SOMAXCONN ;
 scalar_t__ bind (int,void*,int) ;
 int close (int) ;
 int daemon_main (int,int,char*) ;
 TYPE_6__ daemon_vars ;
 int dispose_thread_data ;
 int ecdsa_sign_proxy ;
 int errno ;
 int fork () ;
 int free (char*) ;
 scalar_t__ listen (int,int ) ;
 int memset (TYPE_5__*,int ,int) ;
 int * mkdtemp (char*) ;
 scalar_t__ pipe (int*) ;
 int prctl (int ,int ,int ,int ,int ) ;
 int priv_dec_proxy ;
 int priv_ecdsa_finish ;
 int priv_enc_proxy ;
 int priv_rsa_finish ;
 int pthread_key_create (int *,int ) ;
 int set_cloexec (int) ;
 int sign_proxy ;
 int snprintf (char*,int,char*,...) ;
 int socket (int ,int ,int ) ;
 TYPE_2__ static_rsa_method ;
 char* strdup (char*) ;
 char* strerror (int ) ;
 int unlink_dir (char*) ;

int neverbleed_init(neverbleed_t *nb, char *errbuf)
{
    int pipe_fds[2] = {-1, -1}, listen_fd = -1;
    char *tempdir = ((void*)0);
    const RSA_METHOD *default_method = RSA_PKCS1_SSLeay();
    RSA_METHOD *rsa_method = &static_rsa_method;

    rsa_method->rsa_pub_enc = default_method->rsa_pub_enc;
    rsa_method->rsa_pub_dec = default_method->rsa_pub_dec;
    rsa_method->rsa_verify = default_method->rsa_verify;



    if (pipe(pipe_fds) != 0) {
        snprintf(errbuf, NEVERBLEED_ERRBUF_SIZE, "pipe(2) failed:%s", strerror(errno));
        goto Fail;
    }
    set_cloexec(pipe_fds[1]);
    if ((tempdir = strdup("/tmp/openssl-privsep.XXXXXX")) == ((void*)0)) {
        snprintf(errbuf, NEVERBLEED_ERRBUF_SIZE, "no memory");
        goto Fail;
    }
    if (mkdtemp(tempdir) == ((void*)0)) {
        snprintf(errbuf, NEVERBLEED_ERRBUF_SIZE, "failed to create temporary directory under /tmp:%s", strerror(errno));
        goto Fail;
    }
    memset(&nb->sun_, 0, sizeof(nb->sun_));
    nb->sun_.sun_family = AF_UNIX;
    snprintf(nb->sun_.sun_path, sizeof(nb->sun_.sun_path), "%s/_", tempdir);
    RAND_bytes(nb->auth_token, sizeof(nb->auth_token));
    if ((listen_fd = socket(PF_UNIX, SOCK_STREAM, 0)) == -1) {
        snprintf(errbuf, NEVERBLEED_ERRBUF_SIZE, "socket(2) failed:%s", strerror(errno));
        goto Fail;
    }
    if (bind(listen_fd, (void *)&nb->sun_, sizeof(nb->sun_)) != 0) {
        snprintf(errbuf, NEVERBLEED_ERRBUF_SIZE, "failed to bind to %s:%s", nb->sun_.sun_path, strerror(errno));
        goto Fail;
    }
    if (listen(listen_fd, SOMAXCONN) != 0) {
        snprintf(errbuf, NEVERBLEED_ERRBUF_SIZE, "listen(2) failed:%s", strerror(errno));
        goto Fail;
    }
    nb->daemon_pid = fork();
    switch (nb->daemon_pid) {
    case -1:
        snprintf(errbuf, NEVERBLEED_ERRBUF_SIZE, "fork(2) failed:%s", strerror(errno));
        goto Fail;
    case 0:
        close(pipe_fds[1]);

        prctl(PR_SET_DUMPABLE, 0, 0, 0, 0);

        daemon_vars.nb = nb;
        daemon_main(listen_fd, pipe_fds[0], tempdir);
        break;
    default:
        break;
    }
    close(listen_fd);
    listen_fd = -1;
    close(pipe_fds[0]);
    pipe_fds[0] = -1;


    if ((nb->engine = ENGINE_new()) == ((void*)0) || !ENGINE_set_id(nb->engine, "neverbleed") ||
        !ENGINE_set_name(nb->engine, "privilege separation software engine") || !ENGINE_set_RSA(nb->engine, rsa_method)



            ) {
        snprintf(errbuf, NEVERBLEED_ERRBUF_SIZE, "failed to initialize the OpenSSL engine");
        goto Fail;
    }
    ENGINE_add(nb->engine);


    pthread_key_create(&nb->thread_key, dispose_thread_data);

    free(tempdir);
    return 0;
Fail:
    if (pipe_fds[0] != -1)
        close(pipe_fds[0]);
    if (pipe_fds[1] != -1)
        close(pipe_fds[1]);
    if (tempdir != ((void*)0)) {
        unlink_dir(tempdir);
        free(tempdir);
    }
    if (listen_fd != -1)
        close(listen_fd);
    if (nb->engine != ((void*)0)) {
        ENGINE_free(nb->engine);
        nb->engine = ((void*)0);
    }
    return -1;
}
