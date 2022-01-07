
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jv ;
struct TYPE_2__ {int number; } ;
typedef TYPE_1__ decNumberDoublePrecision ;
typedef int decNumber ;


 scalar_t__ BIN64_DEC_PRECISION ;
 int DEC_CONTEXT_TO_DOUBLE () ;
 scalar_t__ DEC_NUMBER_STRING_GUARD ;
 int JVP_FLAGS_NUMBER_LITERAL ;
 int JVP_HAS_FLAGS (int ,int ) ;
 int assert (int ) ;
 int decNumberReduce (int *,int *,int ) ;
 int decNumberToString (int *,char*) ;
 int * jvp_dec_number_ptr (int ) ;
 double jvp_strtod (int ,char*,char**) ;
 int tsd_dtoa_context_get () ;

__attribute__((used)) static double jvp_literal_number_to_double(jv j) {
  assert(JVP_HAS_FLAGS(j, JVP_FLAGS_NUMBER_LITERAL));

  decNumber *p_dec_number = jvp_dec_number_ptr(j);
  decNumberDoublePrecision dec_double;
  char literal[BIN64_DEC_PRECISION + DEC_NUMBER_STRING_GUARD + 1];




  decNumberReduce(&dec_double.number, p_dec_number, DEC_CONTEXT_TO_DOUBLE());

  decNumberToString(&dec_double.number, literal);

  char *end;
  return jvp_strtod(tsd_dtoa_context_get(), literal, &end);
}
