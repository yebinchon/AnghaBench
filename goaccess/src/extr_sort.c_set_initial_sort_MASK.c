#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int field; int sort; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 TYPE_1__* module_sort ; 

void
FUNC4 (const char *smod, const char *sfield, const char *ssort)
{
  int module, field, order;
  if ((module = FUNC1 (smod)) == -1)
    return;

  if ((field = FUNC2 (sfield)) == -1)
    return;
  if ((order = FUNC3 (ssort)) == -1)
    return;
  if (!FUNC0 (module, field))
    return;

  module_sort[module].field = field;
  module_sort[module].sort = order;
}