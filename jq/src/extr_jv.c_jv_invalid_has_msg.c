
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_FLAGS_INVALID_MSG ;
 int JVP_HAS_FLAGS (int ,int ) ;
 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_INVALID ;
 int assert (int ) ;
 int jv_free (int ) ;

int jv_invalid_has_msg(jv inv) {
  assert(JVP_HAS_KIND(inv, JV_KIND_INVALID));
  int r = JVP_HAS_FLAGS(inv, JVP_FLAGS_INVALID_MSG);
  jv_free(inv);
  return r;
}
