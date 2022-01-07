
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_FLAGS_NUMBER_LITERAL ;
 int JVP_HAS_FLAGS (int ,int ) ;
 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_NUMBER ;
 int assert (int ) ;

__attribute__((used)) static inline int jvp_number_is_literal(jv n) {
  assert(JVP_HAS_KIND(n, JV_KIND_NUMBER));
  return JVP_HAS_FLAGS(n, JVP_FLAGS_NUMBER_LITERAL);
}
