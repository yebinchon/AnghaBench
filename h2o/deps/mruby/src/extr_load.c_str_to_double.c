
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 double INFINITY ;
 int RSTRING_LEN (int ) ;
 char* RSTRING_PTR (int ) ;
 int TRUE ;
 double mrb_str_to_dbl (int *,int ,int ) ;

__attribute__((used)) static double
str_to_double(mrb_state *mrb, mrb_value str)
{
  const char *p = RSTRING_PTR(str);
  mrb_int len = RSTRING_LEN(str);


  if (len > 0 && p[0] == 'i') return INFINITY;


  if (p[0] == 'I' || (len > 1 && p[0] == '-' && p[1] == 'i')) return -INFINITY;

  return mrb_str_to_dbl(mrb, str, TRUE);
}
