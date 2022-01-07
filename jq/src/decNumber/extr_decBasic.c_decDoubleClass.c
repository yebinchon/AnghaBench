
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum decClass { ____Placeholder_decClass } decClass ;
typedef int decFloat ;
typedef scalar_t__ Int ;


 scalar_t__ DECEMIN ;
 int DEC_CLASS_NEG_INF ;
 int DEC_CLASS_NEG_NORMAL ;
 int DEC_CLASS_NEG_SUBNORMAL ;
 int DEC_CLASS_NEG_ZERO ;
 int DEC_CLASS_POS_INF ;
 int DEC_CLASS_POS_NORMAL ;
 int DEC_CLASS_POS_SUBNORMAL ;
 int DEC_CLASS_POS_ZERO ;
 int DEC_CLASS_QNAN ;
 int DEC_CLASS_SNAN ;
 scalar_t__ DFISQNAN (int const*) ;
 scalar_t__ DFISSIGNED (int const*) ;
 scalar_t__ DFISSNAN (int const*) ;
 scalar_t__ DFISSPECIAL (int const*) ;
 scalar_t__ DFISZERO (int const*) ;
 scalar_t__ GETEXPUN (int const*) ;
 scalar_t__ decFloatDigits (int const*) ;

enum decClass decFloatClass(const decFloat *df) {
  Int exp;
  if (DFISSPECIAL(df)) {
    if (DFISQNAN(df)) return DEC_CLASS_QNAN;
    if (DFISSNAN(df)) return DEC_CLASS_SNAN;

    if (DFISSIGNED(df)) return DEC_CLASS_NEG_INF;
    return DEC_CLASS_POS_INF;
    }
  if (DFISZERO(df)) {
    if (DFISSIGNED(df)) return DEC_CLASS_NEG_ZERO;
    return DEC_CLASS_POS_ZERO;
    }


  exp=GETEXPUN(df)
     +decFloatDigits(df)-1;
  if (exp>=DECEMIN) {
    if (DFISSIGNED(df)) return DEC_CLASS_NEG_NORMAL;
    return DEC_CLASS_POS_NORMAL;
    }

  if (DFISSIGNED(df)) return DEC_CLASS_NEG_SUBNORMAL;
  return DEC_CLASS_POS_SUBNORMAL;
  }
