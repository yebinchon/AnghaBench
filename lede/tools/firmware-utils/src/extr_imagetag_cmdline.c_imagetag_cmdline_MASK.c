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
struct gengetopt_args_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,char**,struct gengetopt_args_info*,int /*<<< orphan*/ ,int,int) ; 

int
FUNC1 (int argc, char **argv, struct gengetopt_args_info *args_info)
{
  return FUNC0 (argc, argv, args_info, 0, 1, 1);
}