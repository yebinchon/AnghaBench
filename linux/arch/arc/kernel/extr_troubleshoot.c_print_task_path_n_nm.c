
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct file {int dummy; } ;


 int ARC_PATH_MAX ;
 int IS_ERR (char*) ;
 char* file_path (struct file*,char*,int) ;
 int fput (struct file*) ;
 struct file* get_mm_exe_file (struct mm_struct*) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 int pr_info (char*,char*) ;

__attribute__((used)) static void print_task_path_n_nm(struct task_struct *tsk)
{
 char *path_nm = ((void*)0);
 struct mm_struct *mm;
 struct file *exe_file;
 char buf[ARC_PATH_MAX];

 mm = get_task_mm(tsk);
 if (!mm)
  goto done;

 exe_file = get_mm_exe_file(mm);
 mmput(mm);

 if (exe_file) {
  path_nm = file_path(exe_file, buf, ARC_PATH_MAX-1);
  fput(exe_file);
 }

done:
 pr_info("Path: %s\n", !IS_ERR(path_nm) ? path_nm : "?");
}
