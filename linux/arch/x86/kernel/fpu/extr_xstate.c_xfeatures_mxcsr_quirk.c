
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int XFEATURE_MASK_FP ;
 int XFEATURE_MASK_SSE ;
 int XFEATURE_MASK_YMM ;

__attribute__((used)) static inline bool xfeatures_mxcsr_quirk(u64 xfeatures)
{
 if (!(xfeatures & (XFEATURE_MASK_SSE|XFEATURE_MASK_YMM)))
  return 0;

 if (xfeatures & XFEATURE_MASK_FP)
  return 0;

 return 1;
}
