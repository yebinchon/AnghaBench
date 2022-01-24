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
struct tl_query_header {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int RPC_REQ_RESULT_FLAGS ; 
 int TL_QUERY_HEADER_FLAG_RETURN_BINLOG_POS ; 
 int TL_QUERY_HEADER_FLAG_RETURN_BINLOG_TIME ; 
 long long FUNC0 (int) ; 
 long long FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3 (int *ptr, struct tl_query_header *h) {
  int *p = ptr;
  if (!h->flags) { return 0; }
  int new_flags = FUNC2 (h->flags);
  *p = RPC_REQ_RESULT_FLAGS; 
  p++;
  *p = new_flags;
  p ++;
  if (new_flags & TL_QUERY_HEADER_FLAG_RETURN_BINLOG_POS) {
    *(long long *)p = FUNC1 ();
    p += 2;
  }
  if (new_flags & TL_QUERY_HEADER_FLAG_RETURN_BINLOG_TIME) {
    *(long long *)p = FUNC0 (1000000);
    p += 2;
  }
  return (p - ptr) * 4;
}