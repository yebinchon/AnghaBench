
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arr4 ;
 int jw_array_begin (int *,int) ;
 int jw_array_false (int *) ;
 int jw_array_null (int *) ;
 int jw_array_true (int *) ;
 int jw_end (int *) ;

__attribute__((used)) static void make_arr4(int pretty)
{
 jw_array_begin(&arr4, pretty);
 {
  jw_array_true(&arr4);
  jw_array_false(&arr4);
  jw_array_null(&arr4);
 }
 jw_end(&arr4);
}
