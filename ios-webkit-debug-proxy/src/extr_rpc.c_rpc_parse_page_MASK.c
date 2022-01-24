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
typedef  int /*<<< orphan*/  rpc_status ;
typedef  TYPE_1__* rpc_page_t ;
typedef  int /*<<< orphan*/  plist_t ;
struct TYPE_5__ {int /*<<< orphan*/  url; int /*<<< orphan*/  title; int /*<<< orphan*/  connection_id; int /*<<< orphan*/  page_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_ERROR ; 
 int /*<<< orphan*/  RPC_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 

rpc_status FUNC4(const plist_t node, rpc_page_t *to_page) {
  rpc_page_t page = (to_page ? FUNC3() : NULL);
  if (!page ||
      FUNC1(node, "WIRPageIdentifierKey",
        &page->page_id) ||
      FUNC0(node, "WIRConnectionIdentifierKey",
        &page->connection_id) ||
      FUNC0(node, "WIRTitleKey",
        &page->title) ||
      FUNC0(node, "WIRURLKey",
        &page->url)) {
    FUNC2(page);
    if (to_page) {
      *to_page = NULL;
    }
    return RPC_ERROR;
  }
  *to_page = page;
  return RPC_SUCCESS;
}