
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {scalar_t__ file_size; int * file_data; int * file_name; } ;


 int free (int *) ;

__attribute__((used)) static void fi_clean(struct file_info* finfo) {
 if (!finfo)
  return;

 if (finfo->file_name) {
  finfo->file_name = ((void*)0);
 }

 if (finfo->file_data) {
  free(finfo->file_data);
  finfo->file_data = ((void*)0);
 }

 finfo->file_size = 0;
}
