#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ws_t ;
struct iwdp_iws_struct {int dummy; } ;
typedef  TYPE_3__* iwdp_iws_t ;
struct TYPE_8__ {int /*<<< orphan*/  type; } ;
struct TYPE_10__ {TYPE_2__* ws; TYPE_1__ type; } ;
struct TYPE_9__ {int* is_debug; TYPE_3__* state; int /*<<< orphan*/  on_frame; int /*<<< orphan*/  on_upgrade; int /*<<< orphan*/  on_http_request; int /*<<< orphan*/  send_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_IWS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  iwdp_on_frame ; 
 int /*<<< orphan*/  iwdp_on_http_request ; 
 int /*<<< orphan*/  iwdp_on_upgrade ; 
 int /*<<< orphan*/  iwdp_send_data ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC3 () ; 

iwdp_iws_t FUNC4(bool *is_debug) {
  iwdp_iws_t iws = (iwdp_iws_t)FUNC1(sizeof(struct iwdp_iws_struct));
  if (!iws) {
    return NULL;
  }
  FUNC2(iws, 0, sizeof(struct iwdp_iws_struct));
  iws->type.type = TYPE_IWS;
  iws->ws = FUNC3();
  if (iws->ws) {
    ws_t ws = iws->ws;
    ws->send_data = iwdp_send_data;
    ws->on_http_request = iwdp_on_http_request;
    ws->on_upgrade = iwdp_on_upgrade;
    ws->on_frame = iwdp_on_frame;
    ws->state = iws;
    ws->is_debug = is_debug;
  }

  if (!iws->ws) {
    FUNC0(iws);
    return NULL;
  }
  return iws;
}