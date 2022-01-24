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
struct chan {int /*<<< orphan*/  fd; scalar_t__ output; scalar_t__ primary; int /*<<< orphan*/  data; TYPE_1__* ops; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct chan *chan)
{
	FUNC3(&chan->list);

	FUNC0(chan, 0);

	if (chan->ops->free != NULL)
		(*chan->ops->free)(chan->data);

	if (chan->primary && chan->output)
		FUNC1(chan->fd);
	FUNC2(chan);
}