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
struct TYPE_2__ {int /*<<< orphan*/ * brain_server_dbs; } ;
typedef  TYPE_1__ brain_server_dumper_options_t ;
typedef  int /*<<< orphan*/  brain_server_dbs_t ;

/* Variables and functions */
 int BRAIN_SERVER_DUMP_EVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int keep_running ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void *FUNC3 (void *p)
{
  brain_server_dumper_options_t *brain_server_dumper_options = (brain_server_dumper_options_t *) p;

  brain_server_dbs_t *brain_server_dbs = brain_server_dumper_options->brain_server_dbs;

  int i = 0;

  while (keep_running == true)
  {
    if (i == BRAIN_SERVER_DUMP_EVERY)
    {
      FUNC1   (brain_server_dbs, ".");
      FUNC0 (brain_server_dbs, ".");

      i = 0;
    }
    else
    {
      i++;
    }

    FUNC2 (1);
  }

  return NULL;
}