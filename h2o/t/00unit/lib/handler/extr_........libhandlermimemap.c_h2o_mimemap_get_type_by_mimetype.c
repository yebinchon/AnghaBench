
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int khiter_t ;
struct TYPE_13__ {size_t len; char* base; } ;
struct TYPE_10__ {TYPE_4__ mimetype; } ;
struct TYPE_11__ {TYPE_1__ data; int member_0; } ;
typedef TYPE_2__ h2o_mimemap_type_t ;
struct TYPE_12__ {int typeset; } ;
typedef TYPE_3__ h2o_mimemap_t ;
typedef TYPE_4__ h2o_iovec_t ;


 int H2O_MIMEMAP_TYPE_MIMETYPE ;
 int kh_end (int ) ;
 int kh_get (int ,int ,TYPE_2__*) ;
 TYPE_2__* kh_key (int ,int ) ;
 int typeset ;

h2o_mimemap_type_t *h2o_mimemap_get_type_by_mimetype(h2o_mimemap_t *mimemap, h2o_iovec_t mime, int exact_match_only)
{
    h2o_mimemap_type_t key = {H2O_MIMEMAP_TYPE_MIMETYPE};
    khiter_t iter;
    size_t type_end_at;


    key.data.mimetype = mime;
    if ((iter = kh_get(typeset, mimemap->typeset, &key)) != kh_end(mimemap->typeset))
        return kh_key(mimemap->typeset, iter);

    if (!exact_match_only) {

        for (type_end_at = 0; type_end_at != mime.len; ++type_end_at)
            if (mime.base[type_end_at] == ';' || mime.base[type_end_at] == ' ')
                goto HasAttributes;
    }
    return ((void*)0);

HasAttributes:

    key.data.mimetype.len = type_end_at;
    if ((iter = kh_get(typeset, mimemap->typeset, &key)) != kh_end(mimemap->typeset))
        return kh_key(mimemap->typeset, iter);

    return ((void*)0);
}
