
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jw_end (int *) ;
 int jw_object_begin (int *,int) ;
 int jw_object_false (int *,char*) ;
 int jw_object_null (int *,char*) ;
 int jw_object_true (int *,char*) ;
 int obj4 ;

__attribute__((used)) static void make_obj4(int pretty)
{
 jw_object_begin(&obj4, pretty);
 {
  jw_object_true(&obj4, "t");
  jw_object_false(&obj4, "f");
  jw_object_null(&obj4, "n");
 }
 jw_end(&obj4);
}
