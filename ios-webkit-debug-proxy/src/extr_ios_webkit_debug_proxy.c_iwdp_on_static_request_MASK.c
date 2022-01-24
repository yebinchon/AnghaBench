#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ws_t ;
typedef  int /*<<< orphan*/  ws_status ;
typedef  TYPE_3__* iwdp_t ;
typedef  TYPE_4__* iwdp_private_t ;
typedef  TYPE_5__* iwdp_iws_t ;
struct TYPE_15__ {TYPE_1__* iport; } ;
struct TYPE_14__ {char* frontend; } ;
struct TYPE_13__ {TYPE_4__* private_state; int /*<<< orphan*/  (* on_error ) (TYPE_3__*,char*,char const*) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  state; } ;
struct TYPE_11__ {TYPE_3__* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,char const*,char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,char const*) ; 

ws_status FUNC7(ws_t ws, bool is_head, const char *resource,
    bool *to_keep_alive) {
  iwdp_iws_t iws = (iwdp_iws_t)ws->state;
  iwdp_t self = iws->iport->self;
  if (!resource || FUNC4(resource, "/devtools/", 10)) {
    return self->on_error(self, "Internal error: %s", resource);
  }

  iwdp_private_t my = self->private_state;
  const char *fe_url = my->frontend;
  if (!fe_url) {
    return FUNC0(ws, is_head, resource, "Frontend is disabled.");
  }
  bool is_file = !FUNC5(fe_url, "://");
  if (is_file || !FUNC3(fe_url, "file://", 7)) {
    return FUNC1(ws, is_head, resource,
        fe_url + (is_file ? 0 : 7), to_keep_alive);
  } else if (!FUNC3(fe_url, "http://", 7)) {
    return FUNC2(ws, is_head, resource,
        to_keep_alive);
  }
  return FUNC0(ws, is_head, resource, "Invalid frontend URL?");
}