
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jw_end (int *) ;
 int jw_object_begin (int *,int) ;
 int jw_object_intmax (int *,char*,int) ;
 int obj3 ;

__attribute__((used)) static void make_obj3(int pretty)
{
 jw_object_begin(&obj3, pretty);
 {
  jw_object_intmax(&obj3, "a", 0);
  jw_object_intmax(&obj3, "b", 0xffffffff);
  jw_object_intmax(&obj3, "c", 0x7fffffffffffffffULL);
 }
 jw_end(&obj3);
}
