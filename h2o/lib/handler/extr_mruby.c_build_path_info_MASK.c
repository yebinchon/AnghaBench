#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_5__ {size_t len; scalar_t__ base; } ;
struct TYPE_6__ {size_t len; } ;
struct TYPE_7__ {size_t query_at; int* norm_indexes; TYPE_1__ path; TYPE_2__ path_normalized; } ;
typedef  TYPE_3__ h2o_req_t ;

/* Variables and functions */
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static mrb_value FUNC3(mrb_state *mrb, h2o_req_t *req, size_t confpath_len_wo_slash)
{
    if (req->path_normalized.len == confpath_len_wo_slash)
        return FUNC2(mrb, "");

    FUNC0(req->path_normalized.len > confpath_len_wo_slash);

    size_t path_info_start, path_info_end = req->query_at != SIZE_MAX ? req->query_at : req->path.len;

    if (req->norm_indexes == NULL) {
        path_info_start = confpath_len_wo_slash;
    } else if (req->norm_indexes[0] == 0 && confpath_len_wo_slash == 0) {
        /* path without leading slash */
        path_info_start = 0;
    } else {
        path_info_start = req->norm_indexes[confpath_len_wo_slash] - 1;
    }

    return FUNC1(mrb, req->path.base + path_info_start, path_info_end - path_info_start);
}