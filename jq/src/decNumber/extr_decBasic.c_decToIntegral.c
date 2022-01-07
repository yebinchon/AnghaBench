
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uInt ;
typedef enum rounding { ____Placeholder_rounding } rounding ;
typedef int decFloat ;
struct TYPE_5__ {int round; int status; } ;
typedef TYPE_1__ decContext ;
typedef scalar_t__ Int ;
typedef int Flag ;


 scalar_t__ DECBIAS ;
 scalar_t__* DECCOMBEXP ;
 scalar_t__ DFISNAN (int const*) ;
 int DFWORD (int const*,int ) ;
 scalar_t__ EXPISSPECIAL (scalar_t__) ;
 scalar_t__ GETECON (int const*) ;
 int * decCanonical (int *,int const*) ;
 int decFloatQuantize (int *,int const*,int *,TYPE_1__*) ;
 int decFloatZero (int *) ;
 int * decInfinity (int *,int const*) ;
 int * decNaNs (int *,int const*,int *,TYPE_1__*) ;

__attribute__((used)) static decFloat * decToIntegral(decFloat *result, const decFloat *df,
                                decContext *set, enum rounding rmode,
                                Flag exact) {
  Int exp;
  uInt sourhi;
  enum rounding saveround;
  uInt savestatus;
  decFloat zero;


  sourhi=DFWORD(df, 0);
  exp=DECCOMBEXP[sourhi>>26];

  if (EXPISSPECIAL(exp)) {

    if (DFISNAN(df)) return decNaNs(result, df, ((void*)0), set);

    return decInfinity(result, df);
    }



  exp+=GETECON(df)-DECBIAS;

  if (exp>=0) return decCanonical(result, df);

  saveround=set->round;
  savestatus=set->status;
  set->round=rmode;
  decFloatZero(&zero);
  decFloatQuantize(result, df, &zero, set);
  set->round=saveround;
  if (!exact) set->status=savestatus;
  return result;
  }
