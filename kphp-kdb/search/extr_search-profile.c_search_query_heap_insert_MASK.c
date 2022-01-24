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
 scalar_t__ SEARCH_QUERY_HEAP_SIZE ; 
 scalar_t__ SQH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2 (search_query_heap_en_t *E) {
  if (SQH_SIZE == SEARCH_QUERY_HEAP_SIZE) {
    FUNC1 (E, 1);
  } else {
    FUNC0 (E, ++SQH_SIZE);
  }
}