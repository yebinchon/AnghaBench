#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct piix_host_priv {scalar_t__ sidpr; } ;
struct ata_link {TYPE_2__* ap; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {struct piix_host_priv* private_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ PIIX_SIDPR_DATA ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_link*,unsigned int) ; 
 int /*<<< orphan*/  piix_sidx_map ; 

__attribute__((used)) static int FUNC3(struct ata_link *link,
			       unsigned int reg, u32 *val)
{
	struct piix_host_priv *hpriv = link->ap->host->private_data;

	if (reg >= FUNC0(piix_sidx_map))
		return -EINVAL;

	FUNC2(link, reg);
	*val = FUNC1(hpriv->sidpr + PIIX_SIDPR_DATA);
	return 0;
}