
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int decimal32 ;
typedef int decNumber ;
struct TYPE_7__ {scalar_t__ status; int round; } ;
typedef TYPE_1__ decContext ;


 int DEC_INIT_DECIMAL32 ;
 int decContextDefault (TYPE_1__*,int ) ;
 int decContextSetStatus (TYPE_1__*,scalar_t__) ;
 int decNumberFromString (int *,char const*,TYPE_1__*) ;
 int decimal32FromNumber (int *,int *,TYPE_1__*) ;

decimal32 * decimal32FromString(decimal32 *result, const char *string,
                                decContext *set) {
  decContext dc;
  decNumber dn;

  decContextDefault(&dc, DEC_INIT_DECIMAL32);
  dc.round=set->round;

  decNumberFromString(&dn, string, &dc);
  decimal32FromNumber(result, &dn, &dc);
  if (dc.status!=0) {
    decContextSetStatus(set, dc.status);
    }
  return result;
  }
