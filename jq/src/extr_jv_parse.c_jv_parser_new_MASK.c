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
struct jv_parser {int flags; } ;

/* Variables and functions */
 struct jv_parser* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct jv_parser*,int) ; 

struct jv_parser* FUNC2(int flags) {
  struct jv_parser* p = FUNC0(sizeof(struct jv_parser));
  FUNC1(p, flags);
  p->flags = flags;
  return p;
}