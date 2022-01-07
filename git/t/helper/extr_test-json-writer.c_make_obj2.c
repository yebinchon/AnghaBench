
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jw_end (int *) ;
 int jw_object_begin (int *,int) ;
 int jw_object_intmax (int *,char*,int) ;
 int obj2 ;

__attribute__((used)) static void make_obj2(int pretty)
{
 jw_object_begin(&obj2, pretty);
 {
  jw_object_intmax(&obj2, "a", -1);
  jw_object_intmax(&obj2, "b", 0x7fffffff);
  jw_object_intmax(&obj2, "c", 0);
 }
 jw_end(&obj2);
}
