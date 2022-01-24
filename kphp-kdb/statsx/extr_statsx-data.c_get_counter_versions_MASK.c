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
struct counter {int created_at; struct counter* prev; } ;

/* Variables and functions */
 scalar_t__ Q_raw ; 
 struct counter* FUNC0 (long long,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,long long) ; 
 int FUNC2 (long long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

int FUNC4 (char *buffer, long long counter_id) {
  if (Q_raw) {
    return FUNC1 (buffer, counter_id);
  }
  char *ptr = buffer;
  struct counter *C = FUNC0 (counter_id, 0);
  while (C && ptr < buffer + 100000 && C->prev >= 0) {
    if (ptr > buffer) { *ptr++ = ','; }
    ptr += FUNC3 (ptr, "%d", C->created_at);
    C = C->prev;
  }
  if (ptr < buffer + 100000) {
    if (FUNC2 (counter_id, 0, 1) == -2) {
      return -2;
    }
    ptr = buffer;
    C = FUNC0 (counter_id, 0);
    while (C && ptr < buffer + 100000 && C->prev >= 0) {
      if (ptr > buffer) { *ptr++ = ','; }
      ptr += FUNC3 (ptr, "%d", C->created_at);
      C = C->prev;
    }
  }
  return ptr - buffer;
}