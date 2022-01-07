
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jw_end (int *) ;
 int jw_object_begin (int *,int) ;
 int jw_object_double (int *,char*,int,double) ;
 int obj6 ;

__attribute__((used)) static void make_obj6(int pretty)
{
 jw_object_begin(&obj6, pretty);
 {
  jw_object_double(&obj6, "a", 2, 3.14159);
 }
 jw_end(&obj6);
}
