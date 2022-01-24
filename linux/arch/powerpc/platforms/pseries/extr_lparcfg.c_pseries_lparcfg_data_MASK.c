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
struct seq_file {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int processorCount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_SPLPAR ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*) ; 
 int FUNC7 () ; 
 int mmu_slb_size ; 
 struct device_node* FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC12 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC13 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC14 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC15 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC16 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC17 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct seq_file*) ; 
 TYPE_1__* vdso_data ; 

__attribute__((used)) static int FUNC19(struct seq_file *m, void *v)
{
	int partition_potential_processors;
	int partition_active_processors;
	struct device_node *rtas_node;
	const __be32 *lrdrp = NULL;

	rtas_node = FUNC8("/rtas");
	if (rtas_node)
		lrdrp = FUNC9(rtas_node, "ibm,lrdr-capacity", NULL);

	if (lrdrp == NULL) {
		partition_potential_processors = vdso_data->processorCount;
	} else {
		partition_potential_processors = FUNC0(lrdrp + 4);
	}
	FUNC10(rtas_node);

	partition_active_processors = FUNC4();

	if (FUNC1(FW_FEATURE_SPLPAR)) {
		/* this call handles the ibm,get-system-parameter contents */
		FUNC15(m);
		FUNC14(m);
		FUNC12(m);
		FUNC13(m);
		FUNC16(m);
		FUNC18(m);

		FUNC17(m, "purr=%ld\n", FUNC3());
		FUNC17(m, "tbr=%ld\n", FUNC7());
	} else {		/* non SPLPAR case */

		FUNC17(m, "system_active_processors=%d\n",
			   partition_potential_processors);

		FUNC17(m, "system_potential_processors=%d\n",
			   partition_potential_processors);

		FUNC17(m, "partition_max_entitled_capacity=%d\n",
			   partition_potential_processors * 100);

		FUNC17(m, "partition_entitled_capacity=%d\n",
			   partition_active_processors * 100);
	}

	FUNC17(m, "partition_active_processors=%d\n",
		   partition_active_processors);

	FUNC17(m, "partition_potential_processors=%d\n",
		   partition_potential_processors);

	FUNC17(m, "shared_processor_mode=%d\n",
		   FUNC5(FUNC2()));

#ifdef CONFIG_PPC_BOOK3S_64
	seq_printf(m, "slb_size=%d\n", mmu_slb_size);
#endif
	FUNC11(m);
	FUNC6(m);

	return 0;
}