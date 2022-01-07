
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;
typedef int z ;


 int cmp_ptr_zone ;
 int qsort (int **,int,int,int ) ;

__attribute__((used)) static void zones_sort (zone_t **z, int n) {
  qsort (z, n, sizeof (z[0]), cmp_ptr_zone);
}
