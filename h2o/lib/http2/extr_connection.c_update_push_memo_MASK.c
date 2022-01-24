#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  url_hash ;
struct TYPE_11__ {char const* base; size_t len; } ;
struct TYPE_12__ {TYPE_3__ authority; TYPE_2__* scheme; } ;
struct TYPE_13__ {TYPE_4__ input; } ;
typedef  TYPE_5__ h2o_req_t ;
struct TYPE_14__ {int /*<<< orphan*/ * push_memo; } ;
typedef  TYPE_6__ h2o_http2_conn_t ;
typedef  int h2o_cache_hashcode_t ;
struct TYPE_9__ {char const* base; size_t len; } ;
struct TYPE_10__ {TYPE_1__ name; } ;

/* Variables and functions */
 int FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 

__attribute__((used)) static int FUNC4(h2o_http2_conn_t *conn, h2o_req_t *src_req, const char *abspath, size_t abspath_len)
{

    if (conn->push_memo == NULL)
        conn->push_memo = FUNC1(0, 1024, 1, NULL);

    /* uses the hash as the key */
    h2o_cache_hashcode_t url_hash = FUNC0(src_req->input.scheme->name.base, src_req->input.scheme->name.len) ^
                                    FUNC0(src_req->input.authority.base, src_req->input.authority.len) ^
                                    FUNC0(abspath, abspath_len);
    return FUNC2(conn->push_memo, 0, FUNC3(&url_hash, sizeof(url_hash)), url_hash, FUNC3(NULL, 0));
}