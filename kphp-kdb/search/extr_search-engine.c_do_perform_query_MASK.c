#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  search_query_heap_en_t ;

/* Variables and functions */
 int LAST_SEARCH_QUERY_BUFF_SIZE ; 
 int /*<<< orphan*/  copy_key ; 
 scalar_t__* last_search_query ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,char const*,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

int FUNC6 (const char *key, int len) {
  if (len < LAST_SEARCH_QUERY_BUFF_SIZE) {
    FUNC0 (last_search_query, key, len);
    last_search_query[len] = 0;
  } else {
    FUNC4 (last_search_query, "TOO LONG QUERY");
  }

  search_query_heap_en_t E;
  FUNC3 (&E);
  int res = FUNC1 ();
  FUNC2 (&E, res, (void *) key, copy_key);
  FUNC5 (1, "perform_query result = %d\n", res);
  return res;
}