
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decContext ;


 int DEC_Clamped ;
 int DEC_Condition_CS ;
 int DEC_Condition_DI ;
 int DEC_Condition_DU ;
 int DEC_Condition_DZ ;
 int DEC_Condition_IC ;
 int DEC_Condition_IE ;
 int DEC_Condition_IO ;
 int DEC_Condition_IS ;
 int DEC_Condition_LD ;
 int DEC_Condition_OV ;
 int DEC_Condition_PA ;
 int DEC_Condition_RO ;
 int DEC_Condition_SU ;
 int DEC_Condition_UN ;
 int DEC_Condition_ZE ;
 int DEC_Conversion_syntax ;
 int DEC_Division_by_zero ;
 int DEC_Division_impossible ;
 int DEC_Division_undefined ;
 int DEC_Inexact ;
 int DEC_Insufficient_storage ;
 int DEC_Invalid_context ;
 int DEC_Invalid_operation ;
 int DEC_Lost_digits ;
 int DEC_Overflow ;
 int DEC_Rounded ;
 int DEC_Subnormal ;
 int DEC_Underflow ;
 int * decContextSetStatus (int *,int ) ;
 scalar_t__ strcmp (char const*,int ) ;

decContext * decContextSetStatusFromString(decContext *context,
                                           const char *string) {
  if (strcmp(string, DEC_Condition_CS)==0)
    return decContextSetStatus(context, DEC_Conversion_syntax);
  if (strcmp(string, DEC_Condition_DZ)==0)
    return decContextSetStatus(context, DEC_Division_by_zero);
  if (strcmp(string, DEC_Condition_DI)==0)
    return decContextSetStatus(context, DEC_Division_impossible);
  if (strcmp(string, DEC_Condition_DU)==0)
    return decContextSetStatus(context, DEC_Division_undefined);
  if (strcmp(string, DEC_Condition_IE)==0)
    return decContextSetStatus(context, DEC_Inexact);
  if (strcmp(string, DEC_Condition_IS)==0)
    return decContextSetStatus(context, DEC_Insufficient_storage);
  if (strcmp(string, DEC_Condition_IC)==0)
    return decContextSetStatus(context, DEC_Invalid_context);
  if (strcmp(string, DEC_Condition_IO)==0)
    return decContextSetStatus(context, DEC_Invalid_operation);




  if (strcmp(string, DEC_Condition_OV)==0)
    return decContextSetStatus(context, DEC_Overflow);
  if (strcmp(string, DEC_Condition_PA)==0)
    return decContextSetStatus(context, DEC_Clamped);
  if (strcmp(string, DEC_Condition_RO)==0)
    return decContextSetStatus(context, DEC_Rounded);
  if (strcmp(string, DEC_Condition_SU)==0)
    return decContextSetStatus(context, DEC_Subnormal);
  if (strcmp(string, DEC_Condition_UN)==0)
    return decContextSetStatus(context, DEC_Underflow);
  if (strcmp(string, DEC_Condition_ZE)==0)
    return context;
  return ((void*)0);
  }
