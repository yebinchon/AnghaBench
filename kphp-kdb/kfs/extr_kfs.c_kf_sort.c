
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfs_file_info {int dummy; } ;
typedef int T ;


 int qsort (struct kfs_file_info**,int,int,int ) ;
 int qsort_cmp_file_info ;

__attribute__((used)) static void kf_sort (struct kfs_file_info **T, int n) {
  qsort (T, n, sizeof (T[0]), qsort_cmp_file_info);
}
