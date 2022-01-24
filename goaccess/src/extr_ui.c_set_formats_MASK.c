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
struct TYPE_2__ {void* log_format; void* date_format; void* time_format; } ;

/* Variables and functions */
 char const* ERR_FORMAT_NO_DATE_FMT_DLG ; 
 char const* ERR_FORMAT_NO_LOG_FMT_DLG ; 
 char const* ERR_FORMAT_NO_TIME_FMT_DLG ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (char*) ; 

__attribute__((used)) static const char *
FUNC3 (char *date_format, char *log_format, char *time_format)
{
  /* display status bar error messages */
  if (!time_format && !conf.time_format)
    return ERR_FORMAT_NO_TIME_FMT_DLG;
  if (!date_format && !conf.date_format)
    return ERR_FORMAT_NO_DATE_FMT_DLG;
  if (!log_format && !conf.log_format)
    return ERR_FORMAT_NO_LOG_FMT_DLG;

  if (time_format) {
    FUNC0 (conf.time_format);
    conf.time_format = FUNC2 (time_format);
  }

  if (date_format) {
    FUNC0 (conf.date_format);
    conf.date_format = FUNC2 (date_format);
  }

  if (log_format) {
    FUNC0 (conf.log_format);
    conf.log_format = FUNC2 (log_format);
  }

  FUNC1 ();

  return NULL;
}