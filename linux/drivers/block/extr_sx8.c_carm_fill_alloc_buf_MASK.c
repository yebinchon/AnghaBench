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
struct carm_msg_allocbuf {int n_sg; TYPE_1__* sg; void* n_msg; void* msg_pool; void* n_rbuf; void* rbuf_pool; void* n_evt; void* evt_pool; void* len; void* addr; int /*<<< orphan*/  sg_type; void* handle; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
struct carm_host {int shm_dma; } ;
struct TYPE_2__ {void* len; void* start; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARM_MSG_MISC ; 
 int CARM_Q_LEN ; 
 int /*<<< orphan*/  MISC_ALLOC_MEM ; 
 int PDC_SHM_SIZE ; 
 int RBUF_LEN ; 
 int RMSG_Q_LEN ; 
 int /*<<< orphan*/  SGT_32BIT ; 
 int FUNC0 (unsigned int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct carm_msg_allocbuf*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int FUNC3(struct carm_host *host,
					unsigned int idx, void *mem)
{
	struct carm_msg_allocbuf *ab = mem;

	FUNC2(ab, 0, sizeof(*ab));
	ab->type	= CARM_MSG_MISC;
	ab->subtype	= MISC_ALLOC_MEM;
	ab->handle	= FUNC1(FUNC0(idx));
	ab->n_sg	= 1;
	ab->sg_type	= SGT_32BIT;
	ab->addr	= FUNC1(host->shm_dma + (PDC_SHM_SIZE >> 1));
	ab->len		= FUNC1(PDC_SHM_SIZE >> 1);
	ab->evt_pool	= FUNC1(host->shm_dma + (16 * 1024));
	ab->n_evt	= FUNC1(1024);
	ab->rbuf_pool	= FUNC1(host->shm_dma);
	ab->n_rbuf	= FUNC1(RMSG_Q_LEN);
	ab->msg_pool	= FUNC1(host->shm_dma + RBUF_LEN);
	ab->n_msg	= FUNC1(CARM_Q_LEN);
	ab->sg[0].start	= FUNC1(host->shm_dma + (PDC_SHM_SIZE >> 1));
	ab->sg[0].len	= FUNC1(65536);

	return sizeof(struct carm_msg_allocbuf);
}