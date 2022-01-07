
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inline1 ;
 int jw_array_intmax (int *,int) ;
 int jw_array_string (int *,char*) ;
 int jw_array_true (int *) ;
 int jw_end (int *) ;
 int jw_object_begin (int *,int) ;
 int jw_object_inline_begin_array (int *,char*) ;
 int jw_object_inline_begin_object (int *,char*) ;
 int jw_object_intmax (int *,char*,int) ;
 int jw_object_string (int *,char*,char*) ;
 int jw_object_true (int *,char*) ;

__attribute__((used)) static void make_inline1(int pretty)
{
 jw_object_begin(&inline1, pretty);
 {
  jw_object_inline_begin_object(&inline1, "obj1");
  {
   jw_object_string(&inline1, "a", "abc");
   jw_object_intmax(&inline1, "b", 42);
   jw_object_true(&inline1, "c");
  }
  jw_end(&inline1);
  jw_object_inline_begin_array(&inline1, "arr1");
  {
   jw_array_string(&inline1, "abc");
   jw_array_intmax(&inline1, 42);
   jw_array_true(&inline1);
  }
  jw_end(&inline1);
 }
 jw_end(&inline1);
}
