
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfs_file_info {int dummy; } ;


 int cmp_file_info (struct kfs_file_info const*,struct kfs_file_info const*) ;

__attribute__((used)) static int qsort_cmp_file_info (const void *x, const void *y) {
  return cmp_file_info (*(const struct kfs_file_info **) x, *(const struct kfs_file_info **) y);
}
