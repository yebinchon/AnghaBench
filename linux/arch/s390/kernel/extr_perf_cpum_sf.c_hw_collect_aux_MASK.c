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
struct perf_output_handle {int size; int head; } ;
struct cpu_hw_sf {struct perf_output_handle handle; int /*<<< orphan*/  event; } ;
struct TYPE_2__ {unsigned long num_sdb; } ;
struct aux_buffer {int head; unsigned long alert_mark; int /*<<< orphan*/  empty_mark; TYPE_1__ sfb; } ;

/* Variables and functions */
 int FUNC0 (struct aux_buffer*) ; 
 int PAGE_SHIFT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct aux_buffer*,unsigned long,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,...) ; 
 struct aux_buffer* FUNC4 (struct perf_output_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_output_handle*,unsigned long) ; 
 struct aux_buffer* FUNC6 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned long) ; 
 int /*<<< orphan*/  sfdbg ; 

__attribute__((used)) static void FUNC8(struct cpu_hw_sf *cpuhw)
{
	struct aux_buffer *aux;
	int done = 0;
	unsigned long range = 0, size;
	unsigned long long overflow = 0;
	struct perf_output_handle *handle = &cpuhw->handle;
	unsigned long num_sdb;

	aux = FUNC6(handle);
	if (FUNC1(!aux))
		return;

	/* Inform user space new data arrived */
	size = FUNC0(aux) << PAGE_SHIFT;
	FUNC5(handle, size);
	num_sdb = aux->sfb.num_sdb;

	while (!done) {
		/* Get an output handle */
		aux = FUNC4(handle, cpuhw->event);
		if (handle->size == 0) {
			FUNC7("The AUX buffer with %lu pages for the "
			       "diagnostic-sampling mode is full\n",
				num_sdb);
			FUNC3(sfdbg, 1, "AUX buffer used up\n");
			break;
		}
		if (FUNC1(!aux))
			return;

		/* Update head and alert_mark to new position */
		aux->head = handle->head >> PAGE_SHIFT;
		range = (handle->size + 1) >> PAGE_SHIFT;
		if (range == 1)
			aux->alert_mark = aux->head;
		else
			aux->alert_mark = aux->head + range/2 - 1;

		if (FUNC2(aux, range, &overflow)) {
			if (!overflow) {
				done = 1;
				break;
			}
			size = range << PAGE_SHIFT;
			FUNC5(&cpuhw->handle, size);
			FUNC7("Sample data caused the AUX buffer with %lu "
			       "pages to overflow\n", num_sdb);
			FUNC3(sfdbg, 1, "head %lx range %lx "
					    "overflow %llx\n",
					    aux->head, range, overflow);
		} else {
			size = FUNC0(aux) << PAGE_SHIFT;
			FUNC5(&cpuhw->handle, size);
			FUNC3(sfdbg, 6, "head %lx alert %lx "
					    "already full, try another\n",
					    aux->head, aux->alert_mark);
		}
	}

	if (done)
		FUNC3(sfdbg, 6, "aux_reset_buffer: "
				    "[%lx -> %lx -> %lx] (%lx, %lx)\n",
				    aux->head, aux->alert_mark, aux->empty_mark,
				    FUNC0(aux), range);
}