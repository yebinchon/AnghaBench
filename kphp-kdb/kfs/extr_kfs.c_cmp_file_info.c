
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfs_file_info {scalar_t__ min_log_pos; int filename; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static inline int cmp_file_info (const struct kfs_file_info *FI, const struct kfs_file_info *FJ) {
  if (FI->min_log_pos < FJ->min_log_pos) {
    return -1;
  } else if (FI->min_log_pos > FJ->min_log_pos) {
    return 1;
  } else {
    return strcmp (FI->filename, FJ->filename);
  }
}
