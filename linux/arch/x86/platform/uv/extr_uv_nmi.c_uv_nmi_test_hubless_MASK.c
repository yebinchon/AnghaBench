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
struct uv_hub_nmi_s {int nmi_value; int /*<<< orphan*/  read_mmr_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPI_NMI_STS_GPP_D_0 ; 
 int* FUNC0 (int /*<<< orphan*/ ) ; 
 int STS_GPP_D_0_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct uv_hub_nmi_s *hub_nmi)
{
	int *pstat = FUNC0(GPI_NMI_STS_GPP_D_0);
	int status = *pstat;

	hub_nmi->nmi_value = status;
	FUNC1(&hub_nmi->read_mmr_count);

	if (!(status & STS_GPP_D_0_MASK))	/* Not a UV external NMI */
		return 0;

	*pstat = STS_GPP_D_0_MASK;	/* Is a UV NMI: clear GPP_D_0 status */
	(void)*pstat;			/* Flush write */

	return 1;
}