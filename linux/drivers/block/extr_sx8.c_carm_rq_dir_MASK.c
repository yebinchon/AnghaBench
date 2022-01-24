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
struct request {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 

__attribute__((used)) static inline enum dma_data_direction FUNC2(struct request *rq)
{
	return FUNC0(FUNC1(rq)) ? DMA_TO_DEVICE : DMA_FROM_DEVICE;
}