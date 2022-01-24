#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ivalue; int /*<<< orphan*/  svalue; } ;
struct TYPE_5__ {TYPE_1__ value; int /*<<< orphan*/  key; } ;
typedef  scalar_t__ GRawDataType ;
typedef  TYPE_2__ GRawDataItem ;
typedef  int /*<<< orphan*/  GModule ;

/* Variables and functions */
 scalar_t__ INTEGER ; 
 scalar_t__ STRING ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (GModule module, GRawDataItem item, GRawDataType type,
                    char **data, int *hits)
{
  if (type == INTEGER) {
    if (!(*data = FUNC0 (module, item.key)))
      return 1;
    *hits = item.value.ivalue;
  } else if (type == STRING) {
    if (!(*hits = FUNC1 (module, item.key)))
      return 1;
    *data = FUNC2 (item.value.svalue);
  }
  return 0;
}