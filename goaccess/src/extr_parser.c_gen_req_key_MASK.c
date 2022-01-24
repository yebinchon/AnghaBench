#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ req; int /*<<< orphan*/  req_key; scalar_t__ qstr; } ;
typedef  TYPE_1__ GLogItem ;
typedef  int /*<<< orphan*/  GKeyData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC3 (GKeyData * kdata, GLogItem * logitem)
{
  if (logitem->req && logitem->qstr)
    FUNC0 (&logitem->req, logitem->qstr);
  logitem->req_key = FUNC1 (logitem);

  FUNC2 (kdata, logitem->req_key, logitem->req);

  return 0;
}