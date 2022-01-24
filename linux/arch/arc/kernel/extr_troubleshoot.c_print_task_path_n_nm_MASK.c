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
struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ARC_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct file*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct file* FUNC3 (struct mm_struct*) ; 
 struct mm_struct* FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static void FUNC7(struct task_struct *tsk)
{
	char *path_nm = NULL;
	struct mm_struct *mm;
	struct file *exe_file;
	char buf[ARC_PATH_MAX];

	mm = FUNC4(tsk);
	if (!mm)
		goto done;

	exe_file = FUNC3(mm);
	FUNC5(mm);

	if (exe_file) {
		path_nm = FUNC1(exe_file, buf, ARC_PATH_MAX-1);
		FUNC2(exe_file);
	}

done:
	FUNC6("Path: %s\n", !FUNC0(path_nm) ? path_nm : "?");
}