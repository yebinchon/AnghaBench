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
struct imagetag_cmdline_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct imagetag_cmdline_params*) ; 
 scalar_t__ FUNC1 (int) ; 

struct imagetag_cmdline_params *
FUNC2(void)
{
  struct imagetag_cmdline_params *params = 
    (struct imagetag_cmdline_params *)FUNC1(sizeof(struct imagetag_cmdline_params));
  FUNC0(params);  
  return params;
}