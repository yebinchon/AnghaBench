
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arr2 ;
 int jw_array_begin (int *,int) ;
 int jw_array_intmax (int *,int) ;
 int jw_end (int *) ;

__attribute__((used)) static void make_arr2(int pretty)
{
 jw_array_begin(&arr2, pretty);
 {
  jw_array_intmax(&arr2, -1);
  jw_array_intmax(&arr2, 0x7fffffff);
  jw_array_intmax(&arr2, 0);
 }
 jw_end(&arr2);
}
