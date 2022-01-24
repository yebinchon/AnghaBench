#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* protocol; struct TYPE_5__* method; struct TYPE_5__* data; } ;
struct TYPE_4__ {TYPE_3__* metrics; int /*<<< orphan*/ * sub_list; } ;
typedef  TYPE_1__ GHolderItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC2 (GHolderItem item)
{
  if (item.sub_list != NULL)
    FUNC0 (item.sub_list);
  if (item.metrics->data != NULL)
    FUNC1 (item.metrics->data);
  if (item.metrics->method != NULL)
    FUNC1 (item.metrics->method);
  if (item.metrics->protocol != NULL)
    FUNC1 (item.metrics->protocol);
  if (item.metrics != NULL)
    FUNC1 (item.metrics);
}