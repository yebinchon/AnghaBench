#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int idx; } ;
typedef  TYPE_1__ GColorPair ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 

__attribute__((used)) static GColorPair *
FUNC1 (void)
{
  GColorPair *pair = FUNC0 (1, sizeof (GColorPair));
  /* Must be between 2 and COLOR_PAIRS-1.
   * Starts at 2 since COLOR_NORMAL has already been set */
  pair->idx = 2;

  return pair;
}