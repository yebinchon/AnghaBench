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
typedef  int /*<<< orphan*/ * plist_t ;
typedef  char* plist_dict_iter ;
struct TYPE_5__ {scalar_t__ page_id; } ;

/* Variables and functions */
 scalar_t__ PLIST_DICT ; 
 int /*<<< orphan*/  RPC_ERROR ; 
 int /*<<< orphan*/  RPC_SUCCESS ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,char*,char**,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

rpc_status FUNC9(const plist_t node, rpc_page_t **to_pages) {
  if (!node || !to_pages ||
      FUNC5(node) != PLIST_DICT) {
    return RPC_ERROR;
  }

  *to_pages = NULL;
  size_t length = FUNC2(node);
  rpc_page_t *pages = (rpc_page_t *)FUNC0(length + 1, sizeof(rpc_page_t));
  if (!pages) {
    return RPC_ERROR;
  }
  plist_dict_iter iter = NULL;
  FUNC3(node, &iter);
  int is_ok = (iter != NULL);
  size_t i;
  for (i = 0; i < length && is_ok; i++) {
    char *key = NULL;
    plist_t value = NULL;
    FUNC4(node, iter, &key, &value);
    rpc_page_t page = NULL;
    is_ok = (key && !FUNC7(value, &page) &&
        page->page_id == FUNC8(key, NULL, 0));
    pages[i] = page;
    FUNC1(key);
  }
  FUNC1(iter);
  if (!is_ok) {
    FUNC6(pages);
    return RPC_ERROR;
  }
  *to_pages = pages;
  return RPC_SUCCESS;
}