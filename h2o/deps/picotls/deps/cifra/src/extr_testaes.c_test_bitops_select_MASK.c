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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (size_t,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (size_t,scalar_t__*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
  uint8_t tab8[8];
  uint32_t tab32[32];
  
  for (size_t i = 0; i < 8; i++)
    tab8[i] = 1 << i;
  for (size_t i = 0; i < 32; i++)
    tab32[i] = 1 << i;

  for (size_t i = 0; i < 8; i++)
  {
    FUNC0(FUNC2(i, tab8, 8) == tab8[i]);
  }

  for (size_t i = 0; i < 32; i++)
  {
    FUNC0(FUNC1(i, tab32, 32) == tab32[i]);
  }
}