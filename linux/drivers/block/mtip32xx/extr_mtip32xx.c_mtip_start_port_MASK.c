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
struct mtip_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtip_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtip_port*,int) ; 

__attribute__((used)) static inline void FUNC2(struct mtip_port *port)
{
	/* Enable FIS reception */
	FUNC1(port, 1);

	/* Enable the DMA engine */
	FUNC0(port, 1);
}