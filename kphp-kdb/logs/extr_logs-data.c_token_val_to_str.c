
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtype; } ;
typedef TYPE_1__ token ;


 int F (char*,int ) ;
 int assert (int ) ;
 char* token_buff ;
 int v_cstring ;
 int v_double ;
 int v_int ;
 int v_long ;
 int v_string ;

char *token_val_to_str (token *tok) {
  char *s = token_buff;

  switch (tok->dtype) {
    F("%d", v_int);
    F("%lf", v_double);
    F("%lld", v_long);
    F("%s", v_string);
    F("%s", v_cstring);
    default:
      assert (0);
  }

  return token_buff;
}
