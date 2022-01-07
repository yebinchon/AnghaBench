
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int h2o_mimemap_t ;
struct TYPE_3__ {int * member_0; } ;
typedef TYPE_1__ h2o_globalconf_t ;


 int h2o_mem_release_shared (int *) ;
 int * h2o_mimemap_create () ;
 int h2o_mimemap_define_dynamic (int *,char const**,TYPE_1__*) ;

__attribute__((used)) static void test_dynamic()
{
    h2o_mimemap_t *mimemap = h2o_mimemap_create();
    const char *exts[] = {".php", ((void*)0)};
    h2o_globalconf_t global = {((void*)0)};
    h2o_mimemap_define_dynamic(mimemap, exts, &global);
    h2o_mem_release_shared(mimemap);
}
