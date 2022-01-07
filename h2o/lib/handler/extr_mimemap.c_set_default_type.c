
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int h2o_mimemap_type_t ;
struct TYPE_6__ {int * default_type; } ;
typedef TYPE_1__ h2o_mimemap_t ;


 int h2o_mem_addref_shared (int *) ;
 int h2o_mem_release_shared (int *) ;
 int on_link (TYPE_1__*,int *) ;
 int on_unlink (TYPE_1__*,int *) ;
 int rebuild_typeset (TYPE_1__*) ;

void set_default_type(h2o_mimemap_t *mimemap, h2o_mimemap_type_t *type)
{

    on_unlink(mimemap, mimemap->default_type);
    h2o_mem_release_shared(mimemap->default_type);


    h2o_mem_addref_shared(type);
    mimemap->default_type = type;
    on_link(mimemap, type);
    rebuild_typeset(mimemap);
}
