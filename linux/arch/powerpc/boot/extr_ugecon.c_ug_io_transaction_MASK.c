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
typedef  int u32 ;

/* Variables and functions */
 int EXI_CR ; 
 int EXI_CR_READ_WRITE ; 
 int FUNC0 (int) ; 
 int EXI_CR_TSTART ; 
 int EXI_CSR ; 
 int EXI_CSR_CLK_32MHZ ; 
 int EXI_CSR_CS_0 ; 
 int EXI_DATA ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int* ug_io_base ; 

__attribute__((used)) static u32 FUNC4(u32 in)
{
	u32 *csr_reg = ug_io_base + EXI_CSR;
	u32 *data_reg = ug_io_base + EXI_DATA;
	u32 *cr_reg = ug_io_base + EXI_CR;
	u32 csr, data, cr;

	/* select */
	csr = EXI_CSR_CLK_32MHZ | EXI_CSR_CS_0;
	FUNC3(csr_reg, csr);

	/* read/write */
	data = in;
	FUNC3(data_reg, data);
	cr = FUNC0(2) | EXI_CR_READ_WRITE | EXI_CR_TSTART;
	FUNC3(cr_reg, cr);

	while (FUNC2(cr_reg) & EXI_CR_TSTART)
		FUNC1();

	/* deselect */
	FUNC3(csr_reg, 0);

	data = FUNC2(data_reg);
	return data;
}