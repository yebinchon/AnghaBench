#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ rdstate; scalar_t__ wrstate; scalar_t__ result; } ;
typedef  TYPE_1__ conn ;
struct TYPE_7__ {TYPE_1__ incoming; } ;
typedef  TYPE_2__ client_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ c_done ; 
 scalar_t__ c_stop ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int s_req_parse ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(client_ctx *cx) {
  conn *incoming;

  incoming = &cx->incoming;
  FUNC0(incoming->rdstate == c_stop);
  FUNC0(incoming->wrstate == c_done);
  incoming->wrstate = c_stop;

  if (incoming->result < 0) {
    FUNC3("write error: %s", FUNC4(incoming->result));
    return FUNC2(cx);
  }

  FUNC1(incoming);
  return s_req_parse;
}