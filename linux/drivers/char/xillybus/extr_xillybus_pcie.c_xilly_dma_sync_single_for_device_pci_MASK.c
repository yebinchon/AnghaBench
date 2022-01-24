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
struct xilly_endpoint {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct xilly_endpoint *ep,
						 dma_addr_t dma_handle,
						 size_t size,
						 int direction)
{
	FUNC0(ep->pdev,
				       dma_handle,
				       size,
				       FUNC1(direction));
}