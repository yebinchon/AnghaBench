
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {scalar_t__ tail_data; scalar_t__ head_data; } ;


 int free (scalar_t__) ;

__attribute__((used)) static void file_data_free (struct file_info *file) {
  if (file->head_data) {
    free (file->head_data);
    file->head_data = 0;
  }
  if (file->tail_data) {
    free (file->tail_data);
    file->tail_data = 0;
  }
}
