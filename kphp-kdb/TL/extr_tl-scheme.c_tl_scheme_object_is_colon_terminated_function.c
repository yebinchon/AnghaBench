
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* s; } ;
struct tl_scheme_object {scalar_t__ type; TYPE_1__ u; } ;


 int strlen (char*) ;
 scalar_t__ tlso_function ;

int tl_scheme_object_is_colon_terminated_function (struct tl_scheme_object *O) {
  if (O->type != tlso_function) {
    return 0;
  }
  int l = strlen (O->u.s);
  return (l > 0 && O->u.s[l-1] == ':') ? 1 : 0;
}
