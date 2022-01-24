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
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_2__ {scalar_t__ verbose; } ;

/* Variables and functions */
 TYPE_1__ options ; 
 scalar_t__ qtrue ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1 (const char* fmt, va_list vp)
{
  if (options.verbose != qtrue)
      return 0;
  return FUNC0(fmt, vp);
}