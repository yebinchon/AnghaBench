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
struct tl_query_header {int flags; int kitten_php_delay; int string_forward_keys_num; char** string_forward_keys; int int_forward_keys_num; char* string_forward; int custom_timeout; void* wait_binlog_time; void* int_forward; void** int_forward_keys; void* wait_binlog_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  TL_ERROR_HEADER ; 
 int TL_QUERY_HEADER_FLAG_CUSTOM_TIMEOUT ; 
 int TL_QUERY_HEADER_FLAG_INT_FORWARD ; 
 int TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS ; 
 int TL_QUERY_HEADER_FLAG_KPHP_DELAY ; 
 int TL_QUERY_HEADER_FLAG_MASK ; 
 int TL_QUERY_HEADER_FLAG_STRING_FORWARD ; 
 int TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS ; 
 int TL_QUERY_HEADER_FLAG_WAIT_BINLOG ; 
 int TL_QUERY_HEADER_FLAG_WAIT_BINLOG_TIME ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 void* FUNC2 () ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int) ; 

int FUNC7 (struct tl_query_header *header) {
  int flags = FUNC2 ();
  int i;
  if (FUNC1 ()) {
    return -1;
  }
  if (header->flags & flags) {
    FUNC4 (TL_ERROR_HEADER, "Duplicate flags in header 0x%08x", header->flags & flags);
    return -1;
  }
  if (flags & ~TL_QUERY_HEADER_FLAG_MASK) {
    FUNC4 (TL_ERROR_HEADER, "Unsupported flags in header 0x%08x", (~TL_QUERY_HEADER_FLAG_MASK) & flags);
    return -1;
  }
  header->flags |= flags;
  if (flags & TL_QUERY_HEADER_FLAG_WAIT_BINLOG) {
    header->wait_binlog_pos = FUNC3 ();
    if (FUNC1 ()) {
      return -1;
    }
  }
  if (flags & TL_QUERY_HEADER_FLAG_KPHP_DELAY) {
    header->kitten_php_delay = FUNC2 ();
    if (FUNC1 ()) {
      return -1;
    }
    if (header->kitten_php_delay < 0) {
      header->kitten_php_delay = 0;
    }
    if (header->kitten_php_delay > 120000) {
      header->kitten_php_delay = 120000;
    }
  }
  if (flags & TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS) {
    header->string_forward_keys_num = FUNC2 ();
    if (header->string_forward_keys_num < 0 || header->string_forward_keys_num > 10) {
      FUNC4 (TL_ERROR_HEADER, "Number of string forward keys should be in range 0..10. Value %d", header->string_forward_keys_num);
      return -1;
    }
    if (FUNC1 ()) {
      return -1;
    }
    for (i = 0; i < header->string_forward_keys_num; i++) {
      int l = FUNC6 (1000);
      if (FUNC1 ()) {
        return -1;
      }
      header->string_forward_keys[i] = (char *)FUNC0 (l + 1);
      FUNC5 (header->string_forward_keys[i], l);
      header->string_forward_keys[i][l] = 0;
      if (FUNC1 ()) {
        return -1;
      }
    }
  }
  if (flags & TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS) {
    header->int_forward_keys_num = FUNC2 ();
    if (header->int_forward_keys_num < 0 || header->int_forward_keys_num > 10) {
      FUNC4 (TL_ERROR_HEADER, "Number of int forward keys should be in range 0..10. Value %d", header->int_forward_keys_num);
      return -1;
    }
    if (FUNC1 ()) {
      return -1;
    }
    for (i = 0; i < header->int_forward_keys_num; i++) {
      header->int_forward_keys[i] = FUNC3 ();
      if (FUNC1 ()) {
        return -1;
      }
    }
  }
  if (flags & TL_QUERY_HEADER_FLAG_STRING_FORWARD) {
    int l = FUNC6 (1000);
    if (FUNC1 ()) {
      return -1;
    }
    header->string_forward = (char *)FUNC0 (l + 1);
    FUNC5 (header->string_forward, l);
    header->string_forward[l] = 0;
    if (FUNC1 ()) {
      return -1;
    }
  }
  if (flags & TL_QUERY_HEADER_FLAG_INT_FORWARD) {
    header->int_forward = FUNC3 ();
    if (FUNC1 ()) {
      return -1;
    }
  }
  if (flags & TL_QUERY_HEADER_FLAG_WAIT_BINLOG_TIME) {
    header->wait_binlog_time = FUNC3 ();
    if (FUNC1 ()) {
      return -1;
    }
  }
  if (flags & TL_QUERY_HEADER_FLAG_CUSTOM_TIMEOUT) {
    header->custom_timeout = FUNC2 ();
    if (FUNC1 ()) {
      return -1;
    }
    if (header->custom_timeout < 0) {
      header->custom_timeout = 0;
    }
    if (header->custom_timeout > 120000) {
      header->custom_timeout = 120000;
    }
  }
  return 0;
}