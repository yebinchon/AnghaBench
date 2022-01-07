
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_5__ {size_t len; scalar_t__ base; } ;
struct TYPE_6__ {size_t len; } ;
struct TYPE_7__ {size_t query_at; int* norm_indexes; TYPE_1__ path; TYPE_2__ path_normalized; } ;
typedef TYPE_3__ h2o_req_t ;


 size_t SIZE_MAX ;
 int assert (int) ;
 int h2o_mruby_new_str (int *,scalar_t__,size_t) ;
 int mrb_str_new_lit (int *,char*) ;

__attribute__((used)) static mrb_value build_path_info(mrb_state *mrb, h2o_req_t *req, size_t confpath_len_wo_slash)
{
    if (req->path_normalized.len == confpath_len_wo_slash)
        return mrb_str_new_lit(mrb, "");

    assert(req->path_normalized.len > confpath_len_wo_slash);

    size_t path_info_start, path_info_end = req->query_at != SIZE_MAX ? req->query_at : req->path.len;

    if (req->norm_indexes == ((void*)0)) {
        path_info_start = confpath_len_wo_slash;
    } else if (req->norm_indexes[0] == 0 && confpath_len_wo_slash == 0) {

        path_info_start = 0;
    } else {
        path_info_start = req->norm_indexes[confpath_len_wo_slash] - 1;
    }

    return h2o_mruby_new_str(mrb, req->path.base + path_info_start, path_info_end - path_info_start);
}
