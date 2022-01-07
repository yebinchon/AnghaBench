
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inline2 ;
 int jw_array_begin (int *,int) ;
 int jw_array_inline_begin_array (int *) ;
 int jw_array_inline_begin_object (int *) ;
 int jw_array_intmax (int *,int) ;
 int jw_end (int *) ;
 int jw_object_string (int *,char*,char*) ;

__attribute__((used)) static void make_inline2(int pretty)
{
 jw_array_begin(&inline2, pretty);
 {
  jw_array_inline_begin_array(&inline2);
  {
   jw_array_intmax(&inline2, 1);
   jw_array_intmax(&inline2, 2);
  }
  jw_end(&inline2);
  jw_array_inline_begin_array(&inline2);
  {
   jw_array_intmax(&inline2, 3);
   jw_array_intmax(&inline2, 4);
  }
  jw_end(&inline2);
  jw_array_inline_begin_object(&inline2);
  {
   jw_object_string(&inline2, "a", "abc");
  }
  jw_end(&inline2);
 }
 jw_end(&inline2);
}
