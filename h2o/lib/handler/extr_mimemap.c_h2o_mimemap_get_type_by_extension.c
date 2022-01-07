
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lcbuf ;
typedef scalar_t__ khiter_t ;
typedef int h2o_mimemap_type_t ;
struct TYPE_5__ {int * default_type; int extmap; } ;
typedef TYPE_1__ h2o_mimemap_t ;
struct TYPE_6__ {int len; int base; } ;
typedef TYPE_2__ h2o_iovec_t ;


 int extmap ;
 int h2o_strtolower (char*,int) ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get (int ,int ,char*) ;
 int * kh_val (int ,scalar_t__) ;
 int memcpy (char*,int ,int) ;

h2o_mimemap_type_t *h2o_mimemap_get_type_by_extension(h2o_mimemap_t *mimemap, h2o_iovec_t ext)
{
    char lcbuf[256];

    if (0 < ext.len && ext.len < sizeof(lcbuf)) {
        memcpy(lcbuf, ext.base, ext.len);
        h2o_strtolower(lcbuf, ext.len);
        lcbuf[ext.len] = '\0';
        khiter_t iter = kh_get(extmap, mimemap->extmap, lcbuf);
        if (iter != kh_end(mimemap->extmap))
            return kh_val(mimemap->extmap, iter);
    }
    return mimemap->default_type;
}
