
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ khiter_t ;
typedef char h2o_mimemap_type_t ;
struct TYPE_5__ {int extmap; } ;
typedef TYPE_1__ h2o_mimemap_t ;


 int extmap ;
 int h2o_mem_release_shared (char*) ;
 int kh_del (int ,int ,scalar_t__) ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get (int ,int ,char const*) ;
 char* kh_key (int ,scalar_t__) ;
 char* kh_val (int ,scalar_t__) ;
 int on_unlink (TYPE_1__*,char*) ;
 int rebuild_typeset (TYPE_1__*) ;

void h2o_mimemap_remove_type(h2o_mimemap_t *mimemap, const char *ext)
{
    khiter_t iter = kh_get(extmap, mimemap->extmap, ext);
    if (iter != kh_end(mimemap->extmap)) {
        const char *key = kh_key(mimemap->extmap, iter);
        h2o_mimemap_type_t *type = kh_val(mimemap->extmap, iter);
        on_unlink(mimemap, type);
        h2o_mem_release_shared(type);
        kh_del(extmap, mimemap->extmap, iter);
        h2o_mem_release_shared((char *)key);
        rebuild_typeset(mimemap);
    }
}
