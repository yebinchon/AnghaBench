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
struct skcipher_walk_buffer {int /*<<< orphan*/  entry; int /*<<< orphan*/  dst; } ;
struct skcipher_walk {int /*<<< orphan*/  buffers; int /*<<< orphan*/  out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct skcipher_walk *walk,
				 struct skcipher_walk_buffer *p)
{
	p->dst = walk->out;
	FUNC0(&p->entry, &walk->buffers);
}