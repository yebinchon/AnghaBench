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
struct tl_buffer {scalar_t__ size; int pos; int /*<<< orphan*/  buff; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int) ; 

char *FUNC3 (struct tl_buffer *b) {
  if (b->size == 0) {
    return FUNC0 ("");
  }
  char *s = FUNC2 (b->pos+1);
  FUNC1 (s, b->buff, b->pos);
  s[b->pos] = 0;
  return s;
}