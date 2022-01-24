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
struct TYPE_2__ {char* time_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (char const*) ; 

void
FUNC5 (const char *oarg)
{
  char *fmt = NULL;
  int type = FUNC2 (oarg);

  /* free time format if it was previously set by set_log_format_str() */
  if (conf.time_format)
    FUNC1 (conf.time_format);

  /* type not found, use whatever was given by the user then */
  if (type == -1) {
    conf.time_format = FUNC4 (oarg);
    return;
  }

  /* attempt to get the format string by the enum value */
  if ((fmt = FUNC3 (type)) == NULL) {
    FUNC0 (("Unable to set time format from enum: %s\n", oarg));
    return;
  }

  conf.time_format = fmt;
}