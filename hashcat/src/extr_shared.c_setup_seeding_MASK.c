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
typedef  unsigned int u32 ;
typedef  scalar_t__ time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2 (const bool rp_gen_seed_chgd, const u32 rp_gen_seed)
{
  if (rp_gen_seed_chgd == true)
  {
    FUNC0 (rp_gen_seed);
  }
  else
  {
    const time_t ts = FUNC1 (NULL); // don't tell me that this is an insecure seed

    FUNC0 ((unsigned int) ts);
  }
}