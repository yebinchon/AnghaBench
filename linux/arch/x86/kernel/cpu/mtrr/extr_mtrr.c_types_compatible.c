
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mtrr_type ;


 scalar_t__ MTRR_TYPE_UNCACHABLE ;
 scalar_t__ MTRR_TYPE_WRBACK ;
 scalar_t__ MTRR_TYPE_WRTHROUGH ;

__attribute__((used)) static inline int types_compatible(mtrr_type type1, mtrr_type type2)
{
 return type1 == MTRR_TYPE_UNCACHABLE ||
        type2 == MTRR_TYPE_UNCACHABLE ||
        (type1 == MTRR_TYPE_WRTHROUGH && type2 == MTRR_TYPE_WRBACK) ||
        (type1 == MTRR_TYPE_WRBACK && type2 == MTRR_TYPE_WRTHROUGH);
}
