
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int h2o_pathconf_t ;
struct TYPE_5__ {scalar_t__ size; int * entries; } ;
struct TYPE_4__ {int mimemap; int global; TYPE_2__ paths; } ;
typedef TYPE_1__ h2o_hostconf_t ;


 int h2o_config_init_pathconf (int *,int ,char const*,int ) ;
 int h2o_vector_reserve (int *,TYPE_2__*,scalar_t__) ;

h2o_pathconf_t *h2o_config_register_path(h2o_hostconf_t *hostconf, const char *path, int flags)
{
    h2o_pathconf_t *pathconf;

    h2o_vector_reserve(((void*)0), &hostconf->paths, hostconf->paths.size + 1);
    pathconf = hostconf->paths.entries + hostconf->paths.size++;

    h2o_config_init_pathconf(pathconf, hostconf->global, path, hostconf->mimemap);

    return pathconf;
}
