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
typedef  int /*<<< orphan*/  u8 ;
struct scatterlist {int dummy; } ;
struct ata_taskfile {int dummy; } ;
struct ata_device {int dummy; } ;

/* Variables and functions */
 int DMA_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ata_device*,struct ata_taskfile*,int /*<<< orphan*/  const*,int,struct scatterlist*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,void*,unsigned int) ; 

unsigned FUNC3(struct ata_device *dev,
			   struct ata_taskfile *tf, const u8 *cdb,
			   int dma_dir, void *buf, unsigned int buflen,
			   unsigned long timeout)
{
	struct scatterlist *psg = NULL, sg;
	unsigned int n_elem = 0;

	if (dma_dir != DMA_NONE) {
		FUNC0(!buf);
		FUNC2(&sg, buf, buflen);
		psg = &sg;
		n_elem++;
	}

	return FUNC1(dev, tf, cdb, dma_dir, psg, n_elem,
				    timeout);
}