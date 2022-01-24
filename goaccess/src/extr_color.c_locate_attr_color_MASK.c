#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  attr; } ;
typedef  TYPE_1__ GColors ;

/* Variables and functions */
 int /*<<< orphan*/  A_BLINK ; 
 int /*<<< orphan*/  A_BOLD ; 
 int /*<<< orphan*/  A_NORMAL ; 
 int /*<<< orphan*/  A_REVERSE ; 
 int /*<<< orphan*/  A_UNDERLINE ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static void
FUNC1 (GColors * color, const char *attr)
{
  if (FUNC0 (attr, "bold"))
    color->attr |= A_BOLD;
  if (FUNC0 (attr, "underline"))
    color->attr |= A_UNDERLINE;
  if (FUNC0 (attr, "normal"))
    color->attr |= A_NORMAL;
  if (FUNC0 (attr, "reverse"))
    color->attr |= A_REVERSE;
  if (FUNC0 (attr, "standout"))
    color->attr |= A_REVERSE;
  if (FUNC0 (attr, "blink"))
    color->attr |= A_BLINK;
}