
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int decimal128 ;
typedef int decNumber ;
struct TYPE_7__ {scalar_t__ status; int round; } ;
typedef TYPE_1__ decContext ;


 int DEC_INIT_DECIMAL128 ;
 int decContextDefault (TYPE_1__*,int ) ;
 int decContextSetStatus (TYPE_1__*,scalar_t__) ;
 int decNumberFromString (int *,char const*,TYPE_1__*) ;
 int decimal128FromNumber (int *,int *,TYPE_1__*) ;

decimal128 * decimal128FromString(decimal128 *result, const char *string,
                                  decContext *set) {
  decContext dc;
  decNumber dn;

  decContextDefault(&dc, DEC_INIT_DECIMAL128);
  dc.round=set->round;

  decNumberFromString(&dn, string, &dc);
  decimal128FromNumber(result, &dn, &dc);
  if (dc.status!=0) {
    decContextSetStatus(set, dc.status);
    }
  return result;
  }
