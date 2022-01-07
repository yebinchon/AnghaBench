
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum decClass { ____Placeholder_decClass } decClass ;
typedef int decNumber ;
typedef int decContext ;


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
 scalar_t__ decNumberIsNegative (int const*) ;
 scalar_t__ decNumberIsNormal (int const*,int *) ;
 scalar_t__ decNumberIsQNaN (int const*) ;
 scalar_t__ decNumberIsSNaN (int const*) ;
 scalar_t__ decNumberIsSpecial (int const*) ;
 scalar_t__ decNumberIsZero (int const*) ;

enum decClass decNumberClass(const decNumber *dn, decContext *set) {
  if (decNumberIsSpecial(dn)) {
    if (decNumberIsQNaN(dn)) return DEC_CLASS_QNAN;
    if (decNumberIsSNaN(dn)) return DEC_CLASS_SNAN;

    if (decNumberIsNegative(dn)) return DEC_CLASS_NEG_INF;
    return DEC_CLASS_POS_INF;
    }

  if (decNumberIsNormal(dn, set)) {
    if (decNumberIsNegative(dn)) return DEC_CLASS_NEG_NORMAL;
    return DEC_CLASS_POS_NORMAL;
    }

  if (decNumberIsZero(dn)) {
    if (decNumberIsNegative(dn)) return DEC_CLASS_NEG_ZERO;
    return DEC_CLASS_POS_ZERO;
    }
  if (decNumberIsNegative(dn)) return DEC_CLASS_NEG_SUBNORMAL;
  return DEC_CLASS_POS_SUBNORMAL;
  }
