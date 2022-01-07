
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arr3 ;
 int jw_array_begin (int *,int) ;
 int jw_array_intmax (int *,int) ;
 int jw_end (int *) ;

__attribute__((used)) static void make_arr3(int pretty)
{
 jw_array_begin(&arr3, pretty);
 {
  jw_array_intmax(&arr3, 0);
  jw_array_intmax(&arr3, 0xffffffff);
  jw_array_intmax(&arr3, 0x7fffffffffffffffULL);
 }
 jw_end(&arr3);
}
