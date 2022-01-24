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
struct TYPE_4__ {void* avail_out; void* avail_in; int /*<<< orphan*/  total_out; int /*<<< orphan*/  total_in; int /*<<< orphan*/  next_out; int /*<<< orphan*/  next_in; } ;
struct TYPE_5__ {int /*<<< orphan*/  avail_out; TYPE_1__ z; int /*<<< orphan*/  avail_in; int /*<<< orphan*/  total_out; int /*<<< orphan*/  total_in; int /*<<< orphan*/  next_out; int /*<<< orphan*/  next_in; } ;
typedef  TYPE_2__ git_zstream ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(git_zstream *s)
{
	s->z.next_in = s->next_in;
	s->z.next_out = s->next_out;
	s->z.total_in = s->total_in;
	s->z.total_out = s->total_out;
	s->z.avail_in = FUNC0(s->avail_in);
	s->z.avail_out = FUNC0(s->avail_out);
}