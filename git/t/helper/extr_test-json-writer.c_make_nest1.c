
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arr1 ;
 int jw_end (int *) ;
 int jw_object_begin (int *,int) ;
 int jw_object_sub_jw (int *,char*,int *) ;
 int nest1 ;
 int obj1 ;

__attribute__((used)) static void make_nest1(int pretty)
{
 jw_object_begin(&nest1, pretty);
 {
  jw_object_sub_jw(&nest1, "obj1", &obj1);
  jw_object_sub_jw(&nest1, "arr1", &arr1);
 }
 jw_end(&nest1);
}
