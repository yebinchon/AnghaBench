#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_7__* base; int /*<<< orphan*/  len; } ;
struct TYPE_15__ {TYPE_4__ value; } ;
struct TYPE_12__ {TYPE_7__* base; int /*<<< orphan*/  len; } ;
struct TYPE_11__ {int /*<<< orphan*/  link; } ;
struct TYPE_13__ {TYPE_2__ value; TYPE_1__ message; } ;
struct TYPE_16__ {TYPE_5__ set; TYPE_3__ get; } ;
struct TYPE_17__ {int type; TYPE_6__ data; int /*<<< orphan*/  pending; } ;
typedef  TYPE_7__ h2o_memcached_req_t ;

/* Variables and functions */
#define  REQ_TYPE_DELETE 130 
#define  REQ_TYPE_GET 129 
#define  REQ_TYPE_SET 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(h2o_memcached_req_t *req)
{
    FUNC0(!FUNC2(&req->pending));
    switch (req->type) {
    case REQ_TYPE_GET:
        FUNC0(!FUNC2(&req->data.get.message.link));
        FUNC3(req->data.get.value.base, 0, req->data.get.value.len);
        FUNC1(req->data.get.value.base);
        break;
    case REQ_TYPE_SET:
        FUNC3(req->data.set.value.base, 0, req->data.set.value.len);
        FUNC1(req->data.set.value.base);
        break;
    case REQ_TYPE_DELETE:
        break;
    default:
        FUNC0(!"FIXME");
        break;
    }
    FUNC1(req);
}