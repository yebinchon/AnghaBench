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
struct TYPE_2__ {unsigned long num_sdbt; } ;
struct aux_buffer {struct aux_buffer* sdb_index; struct aux_buffer* sdbt_index; TYPE_1__ sfb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct aux_buffer) ; 
 int /*<<< orphan*/  FUNC2 (struct aux_buffer*) ; 
 int /*<<< orphan*/  sfdbg ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct aux_buffer *aux = data;
	unsigned long i, num_sdbt;

	if (!aux)
		return;

	/* Free SDBT. SDB is freed by the caller */
	num_sdbt = aux->sfb.num_sdbt;
	for (i = 0; i < num_sdbt; i++)
		FUNC1(aux->sdbt_index[i]);

	FUNC2(aux->sdbt_index);
	FUNC2(aux->sdb_index);
	FUNC2(aux);

	FUNC0(sfdbg, 4, "aux_buffer_free: free "
			    "%lu SDBTs\n", num_sdbt);
}