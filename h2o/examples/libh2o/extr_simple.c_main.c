
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uv_loop_t ;
typedef int h2o_pathconf_t ;
typedef int h2o_hostconf_t ;
typedef int h2o_access_log_filehandle_t ;
struct TYPE_10__ {int hosts; TYPE_1__* ctx; } ;
struct TYPE_9__ {int hosts; } ;
struct TYPE_8__ {int loop; int queue; } ;


 int H2O_LOGCONF_ESCAPE_APACHE ;
 int H2O_STRLIT (char*) ;
 int INT32_MAX ;
 int SIGPIPE ;
 int SIG_IGN ;
 scalar_t__ USE_HTTPS ;
 scalar_t__ USE_MEMCACHED ;
 int UV_RUN_DEFAULT ;
 TYPE_7__ accept_ctx ;
 int chunked_test ;
 TYPE_2__ config ;
 scalar_t__ create_listener () ;
 TYPE_1__ ctx ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int * h2o_access_log_open_handle (char*,int *,int ) ;
 int h2o_access_log_register (int *,int *) ;
 int h2o_config_init (TYPE_2__*) ;
 int * h2o_config_register_host (TYPE_2__*,int ,int) ;
 int * h2o_config_register_path (int *,char*,int ) ;
 int h2o_context_init (TYPE_1__*,int *,TYPE_2__*) ;
 int * h2o_evloop_create () ;
 scalar_t__ h2o_evloop_run (int ,int ) ;
 int h2o_file_register (int *,char*,int *,int *,int ) ;
 int h2o_iovec_init (int ) ;
 int h2o_memcached_receiver ;
 int h2o_multithread_register_receiver (int ,int *,int ) ;
 int h2o_reproxy_register (int *) ;
 int libmemcached_receiver ;
 int post_test ;
 int * register_handler (int *,char*,int ) ;
 int reproxy_test ;
 scalar_t__ setup_ssl (char*,char*,char*) ;
 int signal (int ,int ) ;
 int stderr ;
 char* strerror (int ) ;
 int uv_loop_init (int *) ;
 int uv_run (int ,int ) ;

int main(int argc, char **argv)
{
    h2o_hostconf_t *hostconf;
    h2o_access_log_filehandle_t *logfh = h2o_access_log_open_handle("/dev/stdout", ((void*)0), H2O_LOGCONF_ESCAPE_APACHE);
    h2o_pathconf_t *pathconf;

    signal(SIGPIPE, SIG_IGN);

    h2o_config_init(&config);
    hostconf = h2o_config_register_host(&config, h2o_iovec_init(H2O_STRLIT("default")), 65535);

    pathconf = register_handler(hostconf, "/post-test", post_test);
    if (logfh != ((void*)0))
        h2o_access_log_register(pathconf, logfh);

    pathconf = register_handler(hostconf, "/chunked-test", chunked_test);
    if (logfh != ((void*)0))
        h2o_access_log_register(pathconf, logfh);

    pathconf = register_handler(hostconf, "/reproxy-test", reproxy_test);
    h2o_reproxy_register(pathconf);
    if (logfh != ((void*)0))
        h2o_access_log_register(pathconf, logfh);

    pathconf = h2o_config_register_path(hostconf, "/", 0);
    h2o_file_register(pathconf, "examples/doc_root", ((void*)0), ((void*)0), 0);
    if (logfh != ((void*)0))
        h2o_access_log_register(pathconf, logfh);






    h2o_context_init(&ctx, h2o_evloop_create(), &config);

    if (USE_MEMCACHED)
        h2o_multithread_register_receiver(ctx.queue, &libmemcached_receiver, h2o_memcached_receiver);

    if (USE_HTTPS && setup_ssl("examples/h2o/server.crt", "examples/h2o/server.key",
                               "DEFAULT:!MD5:!DSS:!DES:!RC4:!RC2:!SEED:!IDEA:!NULL:!ADH:!EXP:!SRP:!PSK") != 0)
        goto Error;

    accept_ctx.ctx = &ctx;
    accept_ctx.hosts = config.hosts;

    if (create_listener() != 0) {
        fprintf(stderr, "failed to listen to 127.0.0.1:7890:%s\n", strerror(errno));
        goto Error;
    }




    while (h2o_evloop_run(ctx.loop, INT32_MAX) == 0)
        ;


Error:
    return 1;
}
