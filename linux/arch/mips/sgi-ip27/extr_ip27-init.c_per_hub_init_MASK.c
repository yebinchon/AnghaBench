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
struct hub_data {int /*<<< orphan*/  h_cpus; } ;
typedef  int /*<<< orphan*/  nasid_t ;
typedef  scalar_t__ cnodeid_t ;

/* Variables and functions */
 scalar_t__ CKSEG0 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IIO_ICTO ; 
 int /*<<< orphan*/  IIO_ICTP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 struct hub_data* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  hub_init_mask ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(cnodeid_t cnode)
{
	struct hub_data *hub = FUNC5(cnode);
	nasid_t nasid = FUNC0(cnode);

	FUNC3(FUNC8(), &hub->h_cpus);

	if (FUNC9(cnode, hub_init_mask))
		return;
	/*
	 * Set CRB timeout at 5ms, (< PI timeout of 10ms)
	 */
	FUNC1(nasid, IIO_ICTP, 0x800);
	FUNC1(nasid, IIO_ICTO, 0xff);

	FUNC6(cnode);

#ifdef CONFIG_REPLICATE_EXHANDLERS
	/*
	 * If this is not a headless node initialization,
	 * copy over the caliased exception handlers.
	 */
	if (get_compact_nodeid() == cnode) {
		extern char except_vec2_generic, except_vec3_generic;
		extern void build_tlb_refill_handler(void);

		memcpy((void *)(CKSEG0 + 0x100), &except_vec2_generic, 0x80);
		memcpy((void *)(CKSEG0 + 0x180), &except_vec3_generic, 0x80);
		build_tlb_refill_handler();
		memcpy((void *)(CKSEG0 + 0x100), (void *) CKSEG0, 0x80);
		memcpy((void *)(CKSEG0 + 0x180), &except_vec3_generic, 0x100);
		__flush_cache_all();
	}
#endif
}