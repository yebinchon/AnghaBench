#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct node {int /*<<< orphan*/  host; int /*<<< orphan*/  port; } ;
struct TYPE_7__ {int /*<<< orphan*/  targ; } ;
struct TYPE_8__ {TYPE_1__ targ; } ;
struct relative {size_t link_color; struct node node; TYPE_2__ conn; scalar_t__ type; struct relative* prev; struct relative* next; } ;
struct in_addr {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  total_children; int /*<<< orphan*/ * total_links_color; } ;
struct TYPE_11__ {TYPE_3__ structured; } ;
struct TYPE_10__ {int /*<<< orphan*/  port; struct in_addr target; } ;

/* Variables and functions */
 struct relative RELATIVES ; 
 TYPE_6__* STATS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__ default_child ; 
 int /*<<< orphan*/  host ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct relative* FUNC3 (int) ; 

void FUNC4 (struct node child) {
  struct relative *cur = FUNC3 (sizeof (struct relative));
  cur->next = RELATIVES.next;
  cur->prev = &RELATIVES;
  cur->prev->next = cur;
  cur->next->prev = cur;
  cur->node = child;
  cur->type = 0;
  int x = FUNC2 (child.host);
  default_child.target = *(struct in_addr *)&x;
  default_child.port = child.port;
  cur->conn.targ.targ = FUNC0 (&default_child, 0);
  cur->link_color = FUNC1 (cur->node.host, host);
  STATS->structured.total_links_color[cur->link_color]++;
  STATS->structured.total_children ++;
}