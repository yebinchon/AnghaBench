
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jw_end (int *) ;
 int jw_object_begin (int *,int) ;
 int jw_object_string (int *,char*,char*) ;
 int obj5 ;

__attribute__((used)) static void make_obj5(int pretty)
{
 jw_object_begin(&obj5, pretty);
 {
  jw_object_string(&obj5, "abc" "\x09" "def", "abc" "\\" "def");
 }
 jw_end(&obj5);
}
