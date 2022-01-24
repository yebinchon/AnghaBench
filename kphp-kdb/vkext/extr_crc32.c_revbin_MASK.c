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

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int,int) ; 
 unsigned int FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned FUNC2 (unsigned x) {
  x = FUNC0(x,0x55555555U,1);
  x = FUNC0(x,0x33333333U,2);
  x = FUNC0(x,0x0f0f0f0fU,4);
  x = FUNC1 (x);
  return x;
}