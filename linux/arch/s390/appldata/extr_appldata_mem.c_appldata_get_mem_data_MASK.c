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
struct sysinfo {scalar_t__ freeswap; scalar_t__ totalswap; scalar_t__ bufferram; scalar_t__ freehigh; scalar_t__ totalhigh; scalar_t__ freeram; scalar_t__ totalram; int /*<<< orphan*/  sharedram; } ;
struct appldata_mem_data {unsigned long pgpgin; unsigned long pgpgout; unsigned long pswpin; unsigned long pswpout; unsigned long pgalloc; unsigned long pgfault; unsigned long pgmajfault; int /*<<< orphan*/  sync_count_2; int /*<<< orphan*/  timestamp; void* freeswap; void* totalswap; void* cached; void* bufferram; void* freehigh; void* totalhigh; void* freeram; void* totalram; int /*<<< orphan*/  sharedram; int /*<<< orphan*/  sync_count_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_FILE_PAGES ; 
 int NR_VM_EVENT_ITEMS ; 
 void* FUNC0 (scalar_t__) ; 
 size_t PGALLOC_DMA ; 
 size_t PGALLOC_NORMAL ; 
 size_t PGFAULT ; 
 size_t PGMAJFAULT ; 
 size_t PGPGIN ; 
 size_t PGPGOUT ; 
 size_t PSWPIN ; 
 size_t PSWPOUT ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sysinfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysinfo*) ; 

__attribute__((used)) static void FUNC6(void *data)
{
	/*
	 * don't put large structures on the stack, we are
	 * serialized through the appldata_ops_mutex and can use static
	 */
	static struct sysinfo val;
	unsigned long ev[NR_VM_EVENT_ITEMS];
	struct appldata_mem_data *mem_data;

	mem_data = data;
	mem_data->sync_count_1++;

	FUNC1(ev);
	mem_data->pgpgin     = ev[PGPGIN] >> 1;
	mem_data->pgpgout    = ev[PGPGOUT] >> 1;
	mem_data->pswpin     = ev[PSWPIN];
	mem_data->pswpout    = ev[PSWPOUT];
	mem_data->pgalloc    = ev[PGALLOC_NORMAL];
	mem_data->pgalloc    += ev[PGALLOC_DMA];
	mem_data->pgfault    = ev[PGFAULT];
	mem_data->pgmajfault = ev[PGMAJFAULT];

	FUNC4(&val);
	mem_data->sharedram = val.sharedram;
	mem_data->totalram  = FUNC0(val.totalram);
	mem_data->freeram   = FUNC0(val.freeram);
	mem_data->totalhigh = FUNC0(val.totalhigh);
	mem_data->freehigh  = FUNC0(val.freehigh);
	mem_data->bufferram = FUNC0(val.bufferram);
	mem_data->cached    = FUNC0(FUNC3(NR_FILE_PAGES)
				- val.bufferram);

	FUNC5(&val);
	mem_data->totalswap = FUNC0(val.totalswap);
	mem_data->freeswap  = FUNC0(val.freeswap);

	mem_data->timestamp = FUNC2();
	mem_data->sync_count_2++;
}