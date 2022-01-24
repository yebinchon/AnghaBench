#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ module; } ;
typedef  TYPE_1__ GPanel ;
typedef  scalar_t__ GModule ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* paneling ; 

__attribute__((used)) static GPanel *
FUNC1 (GModule module)
{
  int i, num_panels = FUNC0 (paneling);

  for (i = 0; i < num_panels; i++) {
    if (paneling[i].module == module)
      return &paneling[i];
  }
  return NULL;
}