
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {scalar_t__ fsize; int filename; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static inline int better_match (struct file_info *FD, struct file_info *FB) {
  if (FD->fsize > FB->fsize) {
    return 1;
  }
  if (FD->fsize < FB->fsize) {
    return -1;
  }
  return strcmp (FD->filename, FB->filename);
}
