#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct attr_item {int mode; struct attr_item* next; int /*<<< orphan*/  time; int /*<<< orphan*/  fname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(struct attr_item **list,char *fname,int mode,time_t time)
{
  struct attr_item *item;

  item = (struct attr_item *)FUNC1(sizeof(struct attr_item));
  if (item == NULL)
    FUNC0("Out of memory");
  item->fname = FUNC2(fname);
  item->mode  = mode;
  item->time  = time;
  item->next  = *list;
  *list       = item;
}