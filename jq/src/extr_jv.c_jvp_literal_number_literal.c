
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char const* literal_data; } ;
typedef TYPE_1__ jvp_literal_number ;
typedef int jv ;
struct TYPE_10__ {int digits; } ;
typedef TYPE_2__ decNumber ;


 char const* DBL_MAX_STR ;
 char const* DBL_MIN_STR ;
 int JVP_FLAGS_NUMBER_LITERAL ;
 int JVP_HAS_FLAGS (int ,int ) ;
 int assert (int ) ;
 scalar_t__ decNumberIsInfinite (TYPE_2__*) ;
 scalar_t__ decNumberIsNaN (TYPE_2__*) ;
 scalar_t__ decNumberIsNegative (TYPE_2__*) ;
 int decNumberToString (TYPE_2__*,char const*) ;
 char const* jv_mem_alloc (int) ;
 TYPE_2__* jvp_dec_number_ptr (int ) ;
 TYPE_1__* jvp_literal_number_ptr (int ) ;

__attribute__((used)) static const char* jvp_literal_number_literal(jv n) {
  assert(JVP_HAS_FLAGS(n, JVP_FLAGS_NUMBER_LITERAL));
  decNumber *pdec = jvp_dec_number_ptr(n);
  jvp_literal_number* plit = jvp_literal_number_ptr(n);

  if (decNumberIsNaN(pdec)) {
    return "null";
  }

  if (decNumberIsInfinite(pdec)) {

    if (decNumberIsNegative(pdec)) {
      return DBL_MIN_STR;
    } else {
      return DBL_MAX_STR;
    }
  }

  if (plit->literal_data == ((void*)0)) {
    int len = jvp_dec_number_ptr(n)->digits + 14;
    plit->literal_data = jv_mem_alloc(len);




    decNumberToString(pdec, plit->literal_data);
  }

  return plit->literal_data;
}
