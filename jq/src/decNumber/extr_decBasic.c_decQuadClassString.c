
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum decClass { ____Placeholder_decClass } decClass ;
typedef int decFloat ;


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
 char const* DEC_ClassString_NI ;
 char const* DEC_ClassString_NN ;
 char const* DEC_ClassString_NS ;
 char const* DEC_ClassString_NZ ;
 char const* DEC_ClassString_PI ;
 char const* DEC_ClassString_PN ;
 char const* DEC_ClassString_PS ;
 char const* DEC_ClassString_PZ ;
 char const* DEC_ClassString_QN ;
 char const* DEC_ClassString_SN ;
 char const* DEC_ClassString_UN ;
 int decFloatClass (int const*) ;

const char *decFloatClassString(const decFloat *df) {
  enum decClass eclass=decFloatClass(df);
  if (eclass==DEC_CLASS_POS_NORMAL) return DEC_ClassString_PN;
  if (eclass==DEC_CLASS_NEG_NORMAL) return DEC_ClassString_NN;
  if (eclass==DEC_CLASS_POS_ZERO) return DEC_ClassString_PZ;
  if (eclass==DEC_CLASS_NEG_ZERO) return DEC_ClassString_NZ;
  if (eclass==DEC_CLASS_POS_SUBNORMAL) return DEC_ClassString_PS;
  if (eclass==DEC_CLASS_NEG_SUBNORMAL) return DEC_ClassString_NS;
  if (eclass==DEC_CLASS_POS_INF) return DEC_ClassString_PI;
  if (eclass==DEC_CLASS_NEG_INF) return DEC_ClassString_NI;
  if (eclass==DEC_CLASS_QNAN) return DEC_ClassString_QN;
  if (eclass==DEC_CLASS_SNAN) return DEC_ClassString_SN;
  return DEC_ClassString_UN;
  }
