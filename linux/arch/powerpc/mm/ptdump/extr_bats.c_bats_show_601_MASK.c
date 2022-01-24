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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPRN_IBAT0L ; 
 int /*<<< orphan*/  SPRN_IBAT0U ; 
 int /*<<< orphan*/  SPRN_IBAT1L ; 
 int /*<<< orphan*/  SPRN_IBAT1U ; 
 int /*<<< orphan*/  SPRN_IBAT2L ; 
 int /*<<< orphan*/  SPRN_IBAT2U ; 
 int /*<<< orphan*/  SPRN_IBAT3L ; 
 int /*<<< orphan*/  SPRN_IBAT3U ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	FUNC1(m, "---[ Block Address Translation ]---\n");

	FUNC0(m, 0, SPRN_IBAT0L, SPRN_IBAT0U);
	FUNC0(m, 1, SPRN_IBAT1L, SPRN_IBAT1U);
	FUNC0(m, 2, SPRN_IBAT2L, SPRN_IBAT2U);
	FUNC0(m, 3, SPRN_IBAT3L, SPRN_IBAT3U);

	return 0;
}