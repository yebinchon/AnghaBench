
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jw_end (int *) ;
 int jw_object_begin (int *,int) ;
 int jw_object_intmax (int *,char*,int) ;
 int jw_object_string (int *,char*,char*) ;
 int jw_object_true (int *,char*) ;
 int obj1 ;

__attribute__((used)) static void make_obj1(int pretty)
{
 jw_object_begin(&obj1, pretty);
 {
  jw_object_string(&obj1, "a", "abc");
  jw_object_intmax(&obj1, "b", 42);
  jw_object_true(&obj1, "c");
 }
 jw_end(&obj1);
}
