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
struct raw_message {int total_bytes; int last_offset; int first_offset; struct msg_part* last; struct msg_part* first; } ;
struct msg_part {int offset; int len; struct msg_part* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC2 (struct raw_message *raw) {
  if (!raw->first) { 
    FUNC1 (stderr, "( ) # %d\n", raw->total_bytes);
    FUNC0 (!raw->total_bytes);
  } else {
    int total_size  = 0;
    struct msg_part *mp = raw->first;
    FUNC1 (stderr, "(");
    while (mp != 0) {
      int size = (mp == raw->last ? raw->last_offset : mp->offset + mp->len) - (mp == raw->first ? raw->first_offset : mp->offset);
      FUNC1 (stderr, " %d", size);
      total_size += size;
      if (mp == raw->last) { break; }
      mp = mp->next;
    }
    FUNC0 (mp == raw->last);
    FUNC1 (stderr, " ) # %d\n", raw->total_bytes);
    FUNC0 (total_size == raw->total_bytes);
  }
  return 0;
}