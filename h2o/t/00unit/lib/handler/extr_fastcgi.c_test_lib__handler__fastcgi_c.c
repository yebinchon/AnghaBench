
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int h2o_pathconf_t ;
typedef int h2o_hostconf_t ;
struct TYPE_6__ {int server_name; } ;
typedef TYPE_1__ h2o_globalconf_t ;


 int H2O_STRLIT (char*) ;
 int ctx ;
 int h2o_config_dispose (TYPE_1__*) ;
 int h2o_config_init (TYPE_1__*) ;
 int * h2o_config_register_host (TYPE_1__*,int ,int) ;
 int * h2o_config_register_path (int *,char*,int ) ;
 int h2o_context_dispose (int *) ;
 int h2o_context_init (int *,int ,TYPE_1__*) ;
 int h2o_iovec_init (int ) ;
 int subtest (char*,int ) ;
 int test_build_request ;
 int test_loop ;

void test_lib__handler__fastcgi_c()
{
    h2o_globalconf_t globalconf;
    h2o_hostconf_t *hostconf;
    h2o_pathconf_t *pathconf;

    h2o_config_init(&globalconf);
    globalconf.server_name = h2o_iovec_init(H2O_STRLIT("h2o/1.2.1-alpha1"));
    hostconf = h2o_config_register_host(&globalconf, h2o_iovec_init(H2O_STRLIT("default")), 65535);
    pathconf = h2o_config_register_path(hostconf, "/", 0);

    h2o_context_init(&ctx, test_loop, &globalconf);

    subtest("build-request", test_build_request);

    h2o_context_dispose(&ctx);
    h2o_config_dispose(&globalconf);
}
