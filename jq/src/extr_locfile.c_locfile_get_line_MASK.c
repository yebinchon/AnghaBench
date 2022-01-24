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
struct locfile {int length; int* linemap; int nlines; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

int FUNC1(struct locfile* l, int pos) {
  FUNC0(pos < l->length);
  int line = 1;
  while (l->linemap[line] <= pos) line++;   // == if pos at start (before, never ==, because pos never on \n)
  FUNC0(line-1 < l->nlines);
  return line-1;
}