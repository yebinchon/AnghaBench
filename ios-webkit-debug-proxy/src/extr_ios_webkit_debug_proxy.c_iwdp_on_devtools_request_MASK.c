#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ws_t ;
typedef  int /*<<< orphan*/  ws_status ;
typedef  TYPE_3__* iwdp_iws_t ;
typedef  TYPE_4__* iwdp_iwi_t ;
typedef  int /*<<< orphan*/ * iwdp_ipage_t ;
struct TYPE_12__ {int max_page_num; int /*<<< orphan*/  page_num_to_ipage; } ;
struct TYPE_11__ {TYPE_1__* iport; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* on_error ) (TYPE_2__*,char*,char const*) ;int /*<<< orphan*/  state; } ;
struct TYPE_9__ {TYPE_4__* iwi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 int FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,char const*) ; 

ws_status FUNC7(ws_t ws, const char *resource) {
  iwdp_iws_t iws = (iwdp_iws_t)ws->state;
  if (!resource || FUNC4(resource, "/devtools/page/", 15)) {
    return ws->on_error(ws, "Internal error: %s", resource);
  }
  // parse page_num
  const char *s = resource + 15;
  char *end = NULL;
  int page_num = FUNC5(s, &end, 0);
  if (*end != '\0' || *s == '\0') {
    page_num = -1;
  }
  // find page
  iwdp_iwi_t iwi = iws->iport->iwi;
  iwdp_ipage_t p =
    (iwi && page_num > 0 && page_num <= iwi->max_page_num ?
     (iwdp_ipage_t)FUNC1(iwi->page_num_to_ipage,
       FUNC0(page_num)) : NULL);
  if (!p) {
    return FUNC2(ws, false, resource, "Unknown page id");
  }
  return FUNC3(p, iws);
}