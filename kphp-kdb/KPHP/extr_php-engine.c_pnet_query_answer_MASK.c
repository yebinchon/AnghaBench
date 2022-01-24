#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct connection {scalar_t__ generation; int /*<<< orphan*/ * type; } ;
struct conn_query {scalar_t__ req_generation; scalar_t__ extra; struct connection* requester; } ;
struct TYPE_5__ {int /*<<< orphan*/  ans; } ;
typedef  TYPE_1__ net_ansgen_t ;
struct TYPE_8__ {void* extra; } ;
struct TYPE_7__ {void* extra; } ;
struct TYPE_6__ {void* extra; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct connection*) ; 
 TYPE_3__* FUNC1 (struct connection*) ; 
 TYPE_2__* FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ct_php_engine_http_server ; 
 int /*<<< orphan*/  ct_php_engine_rpc_server ; 
 int /*<<< orphan*/  ct_php_rpc_client ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 

void FUNC5 (struct conn_query *q) {
  struct connection *req = q->requester;
  if (req != NULL && req->generation == q->req_generation) {
    void *extra = NULL;
    if (req->type == &ct_php_engine_rpc_server) {
      extra = FUNC2 (req)->extra;
    } else if (req->type == &ct_php_rpc_client) {
      extra = FUNC1 (req)->extra;
    } else if (req->type == &ct_php_engine_http_server) {
      extra = FUNC0 (req)->extra;
    } else {
      FUNC3 ("unexpected type of connection\n" && 0);
    }
    FUNC4 (extra, ((net_ansgen_t *)(q->extra))->ans);
  }
}