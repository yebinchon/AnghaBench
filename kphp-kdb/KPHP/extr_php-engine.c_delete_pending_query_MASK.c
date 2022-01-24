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
struct conn_query {int /*<<< orphan*/  requester; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct conn_query*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct conn_query*,int) ; 

int FUNC3 (struct conn_query *q) {
  FUNC1 (1, "delete_pending_query(%p,%p)\n", q, q->requester);

  FUNC0 (q);
  FUNC2 (q, sizeof (*q));
  return 0;
}