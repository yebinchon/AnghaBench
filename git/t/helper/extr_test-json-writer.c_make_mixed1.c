
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arr1 ;
 int jw_end (int *) ;
 int jw_init (int *) ;
 int jw_object_begin (int *,int) ;
 int jw_object_sub_jw (int *,char*,int *) ;
 int make_arr1 (int) ;
 int make_obj1 (int ) ;
 int mixed1 ;
 int obj1 ;

__attribute__((used)) static void make_mixed1(int pretty)
{
 jw_init(&obj1);
 jw_init(&arr1);

 make_obj1(0);
 make_arr1(1);

 jw_object_begin(&mixed1, pretty);
 {
  jw_object_sub_jw(&mixed1, "obj1", &obj1);
  jw_object_sub_jw(&mixed1, "arr1", &arr1);
 }
 jw_end(&mixed1);
}
