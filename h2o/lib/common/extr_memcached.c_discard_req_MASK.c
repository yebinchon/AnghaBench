#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  message; int /*<<< orphan*/  receiver; } ;
struct TYPE_7__ {TYPE_1__ get; } ;
struct TYPE_8__ {int type; TYPE_2__ data; } ;
typedef  TYPE_3__ h2o_memcached_req_t ;

/* Variables and functions */
#define  REQ_TYPE_GET 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(h2o_memcached_req_t *req)
{
    switch (req->type) {
    case REQ_TYPE_GET:
        FUNC1(req->data.get.receiver, &req->data.get.message);
        break;
    default:
        FUNC0(req);
        break;
    }
}