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
struct seq_file {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ GG2_PCI_CC_CTRL ; 
 scalar_t__ GG2_PCI_DRAM_BANK0 ; 
 scalar_t__ GG2_PCI_DRAM_CTRL ; 
 int /*<<< orphan*/ * gg2_cachemodes ; 
 int* gg2_cachesizes ; 
 char const** gg2_cachetypes ; 
 int /*<<< orphan*/ * gg2_memtypes ; 
 scalar_t__ gg2_pci_config_base ; 
 int FUNC0 (scalar_t__) ; 
 struct device_node* FUNC1 (char*) ; 
 char* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static void FUNC6(struct seq_file *m)
{
	int i, sdramen;
	unsigned int t;
	struct device_node *root;
	const char *model = "";

	root = FUNC1("/");
	if (root)
		model = FUNC2(root, "model", NULL);
	FUNC4(m, "machine\t\t: CHRP %s\n", model);

	/* longtrail (goldengate) stuff */
	if (model && !FUNC5(model, "IBM,LongTrail", 13)) {
		/* VLSI VAS96011/12 `Golden Gate 2' */
		/* Memory banks */
		sdramen = (FUNC0(gg2_pci_config_base + GG2_PCI_DRAM_CTRL)
			   >>31) & 1;
		for (i = 0; i < (sdramen ? 4 : 6); i++) {
			t = FUNC0(gg2_pci_config_base+
						 GG2_PCI_DRAM_BANK0+
						 i*4);
			if (!(t & 1))
				continue;
			switch ((t>>8) & 0x1f) {
			case 0x1f:
				model = "4 MB";
				break;
			case 0x1e:
				model = "8 MB";
				break;
			case 0x1c:
				model = "16 MB";
				break;
			case 0x18:
				model = "32 MB";
				break;
			case 0x10:
				model = "64 MB";
				break;
			case 0x00:
				model = "128 MB";
				break;
			default:
				model = "Reserved";
				break;
			}
			FUNC4(m, "memory bank %d\t: %s %s\n", i, model,
				   gg2_memtypes[sdramen ? 1 : ((t>>1) & 3)]);
		}
		/* L2 cache */
		t = FUNC0(gg2_pci_config_base+GG2_PCI_CC_CTRL);
		FUNC4(m, "board l2\t: %s %s (%s)\n",
			   gg2_cachesizes[(t>>7) & 3],
			   gg2_cachetypes[(t>>2) & 3],
			   gg2_cachemodes[t & 3]);
	}
	FUNC3(root);
}