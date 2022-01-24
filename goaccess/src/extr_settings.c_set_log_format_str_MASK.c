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
struct TYPE_2__ {char* log_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 void* FUNC6 (char const*) ; 

void
FUNC7 (const char *oarg)
{
  char *fmt = NULL;
  int type = FUNC2 (oarg);

  /* free log format if it was previously set */
  if (conf.log_format)
    FUNC1 (conf.log_format);

  /* type not found, use whatever was given by the user then */
  if (type == -1) {
    conf.log_format = FUNC6 (oarg);
    return;
  }

  /* attempt to get the format string by the enum value */
  if ((fmt = FUNC3 (type)) == NULL) {
    FUNC0 (("Unable to set log format from enum: %s\n", oarg));
    return;
  }

  conf.log_format = FUNC6 (fmt);
  /* assume we are using the default date/time formats */
  FUNC5 (oarg);
  FUNC4 (oarg);
  FUNC1 (fmt);
}