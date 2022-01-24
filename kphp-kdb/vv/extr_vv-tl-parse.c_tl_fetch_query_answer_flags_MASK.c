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
struct tl_query_header {int flags; void* binlog_time; void* binlog_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  TL_ERROR_HEADER ; 
 int TL_QUERY_RESULT_HEADER_FLAG_BINLOG_POS ; 
 int TL_QUERY_RESULT_HEADER_FLAG_BINLOG_TIME ; 
 int TL_QUERY_RESULT_HEADER_FLAG_MASK ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC4 (struct tl_query_header *header) {
  int flags = FUNC1 ();
  if (FUNC0 ()) {
    return -1;
  }
  if (header->flags & flags) {
    FUNC3 (TL_ERROR_HEADER, "Duplicate flags in header 0x%08x", header->flags & flags);
    return -1;
  }
  if (flags & ~TL_QUERY_RESULT_HEADER_FLAG_MASK) {
    FUNC3 (TL_ERROR_HEADER, "Unsupported flags in header 0x%08x", (~TL_QUERY_RESULT_HEADER_FLAG_MASK) & flags);
    return -1;
  }
  header->flags |= flags;
  if (flags & TL_QUERY_RESULT_HEADER_FLAG_BINLOG_POS) {
    header->binlog_pos = FUNC2 ();
    if (FUNC0 ()) {
      return -1;
    }
  }
  if (flags & TL_QUERY_RESULT_HEADER_FLAG_BINLOG_TIME) {
    header->binlog_time = FUNC2 ();
    if (FUNC0 ()) {
      return -1;
    }
  }
  return 0;
}