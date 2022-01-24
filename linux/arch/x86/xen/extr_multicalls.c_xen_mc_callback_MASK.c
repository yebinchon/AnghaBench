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
struct mc_buffer {scalar_t__ cbidx; struct callback* callbacks; } ;
struct callback {void (* fn ) (void*) ;void* data; } ;

/* Variables and functions */
 scalar_t__ MC_BATCH ; 
 int /*<<< orphan*/  XEN_MC_FL_CALLBACK ; 
 int /*<<< orphan*/  mc_buffer ; 
 struct mc_buffer* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (void*),void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void (*fn)(void *), void *data)
{
	struct mc_buffer *b = FUNC0(&mc_buffer);
	struct callback *cb;

	if (b->cbidx == MC_BATCH) {
		FUNC2(XEN_MC_FL_CALLBACK);
		FUNC3();
	}

	FUNC1(fn, data);

	cb = &b->callbacks[b->cbidx++];
	cb->fn = fn;
	cb->data = data;
}