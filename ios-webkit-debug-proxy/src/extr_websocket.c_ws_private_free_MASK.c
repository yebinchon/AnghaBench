#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ws_private_t ;
struct ws_private {int dummy; } ;
struct TYPE_5__ {struct TYPE_5__* req_host; struct TYPE_5__* sec_answer; struct TYPE_5__* sec_key; struct TYPE_5__* protocol; struct TYPE_5__* http_version; struct TYPE_5__* resource; struct TYPE_5__* method; int /*<<< orphan*/  data; int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(ws_private_t my) {
  if (my) {
    FUNC0(my->in);
    FUNC0(my->out);
    FUNC0(my->data);
    FUNC1(my->method);
    FUNC1(my->resource);
    FUNC1(my->http_version);
    FUNC1(my->protocol);
    FUNC1(my->sec_key);
    FUNC1(my->sec_answer);
    FUNC1(my->req_host);
    FUNC2(my, 0, sizeof(struct ws_private));
    FUNC1(my);
  }
}