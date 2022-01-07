
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct file_info {int file_size; int * file_name; } ;


 int ERRS (char*,int *) ;
 int stat (int *,struct stat*) ;

__attribute__((used)) static int get_file_stat(struct file_info *fdata)
{
 struct stat st;
 int res;

 if (fdata->file_name == ((void*)0)) {
  return 0;
 }
 res = stat(fdata->file_name, &st);
 if (res){
  ERRS("stat failed on %s", fdata->file_name);
  return res;
 }

 fdata->file_size = st.st_size;
 return 0;
}
