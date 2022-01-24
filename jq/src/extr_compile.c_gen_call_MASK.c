#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* first; } ;
typedef  TYPE_2__ block ;
struct TYPE_7__ {TYPE_2__ arglist; int /*<<< orphan*/  nactuals; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALL_JQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 

block FUNC2(const char* name, block args) {
  block b = FUNC1(CALL_JQ, name);
  b.first->arglist = args;
  b.first->nactuals = FUNC0(b.first->arglist);
  return b;
}