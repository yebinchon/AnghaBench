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
 int /*<<< orphan*/  se_dword ; 
 int /*<<< orphan*/  se_half ; 
 int se_kernmode_warn ; 
 int /*<<< orphan*/  se_multi ; 
 int /*<<< orphan*/  se_sys ; 
 int /*<<< orphan*/  se_user ; 
 size_t se_usermode ; 
 char** se_usermode_action ; 
 int /*<<< orphan*/  se_word ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int,...) ; 

__attribute__((used)) static int FUNC1(struct seq_file *m, void *v)
{
	FUNC0(m, "User:\t\t%lu\n", se_user);
	FUNC0(m, "System:\t\t%lu\n", se_sys);
	FUNC0(m, "Half:\t\t%lu\n", se_half);
	FUNC0(m, "Word:\t\t%lu\n", se_word);
	FUNC0(m, "DWord:\t\t%lu\n", se_dword);
	FUNC0(m, "Multi:\t\t%lu\n", se_multi);
	FUNC0(m, "User faults:\t%i (%s)\n", se_usermode,
			se_usermode_action[se_usermode]);
	FUNC0(m, "Kernel faults:\t%i (fixup%s)\n", se_kernmode_warn,
			se_kernmode_warn ? "+warn" : "");
	return 0;
}