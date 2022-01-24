#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* data; char* data_key; char* root; char* root_key; } ;
struct TYPE_5__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ GLogItem ;
typedef  TYPE_2__ GKeyData ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (GKeyData * kdata, GLogItem * logitem)
{
  const char *status = NULL, *type = NULL;

  if (!logitem->status)
    return 1;

  type = FUNC1 (logitem->status);
  status = FUNC0 (logitem->status);

  kdata->data = (char *) status;
  kdata->data_key = (char *) status;

  kdata->root = (char *) type;
  kdata->root_key = (char *) type;

  return 0;
}