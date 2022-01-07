
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int emit_request_errors; } ;
struct TYPE_6__ {TYPE_1__ error_log; int * mimemap; int path; int * global; } ;
typedef TYPE_2__ h2o_pathconf_t ;
typedef int h2o_mimemap_t ;
typedef int h2o_globalconf_t ;


 int SIZE_MAX ;
 int h2o_mem_addref_shared (int *) ;
 int h2o_strdup (int *,char const*,int ) ;
 int memset (TYPE_2__*,int ,int) ;

void h2o_config_init_pathconf(h2o_pathconf_t *pathconf, h2o_globalconf_t *globalconf, const char *path, h2o_mimemap_t *mimemap)
{
    memset(pathconf, 0, sizeof(*pathconf));
    pathconf->global = globalconf;
    if (path != ((void*)0))
        pathconf->path = h2o_strdup(((void*)0), path, SIZE_MAX);
    h2o_mem_addref_shared(mimemap);
    pathconf->mimemap = mimemap;
    pathconf->error_log.emit_request_errors = 1;
}
