
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arr1 ;
 int jw_array_begin (int *,int) ;
 int jw_array_intmax (int *,int) ;
 int jw_array_string (int *,char*) ;
 int jw_array_true (int *) ;
 int jw_end (int *) ;

__attribute__((used)) static void make_arr1(int pretty)
{
 jw_array_begin(&arr1, pretty);
 {
  jw_array_string(&arr1, "abc");
  jw_array_intmax(&arr1, 42);
  jw_array_true(&arr1);
 }
 jw_end(&arr1);
}
