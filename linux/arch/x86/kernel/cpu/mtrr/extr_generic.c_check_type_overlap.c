
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ MTRR_TYPE_UNCACHABLE ;
 scalar_t__ MTRR_TYPE_WRBACK ;
 scalar_t__ MTRR_TYPE_WRTHROUGH ;

__attribute__((used)) static int check_type_overlap(u8 *prev, u8 *curr)
{
 if (*prev == MTRR_TYPE_UNCACHABLE || *curr == MTRR_TYPE_UNCACHABLE) {
  *prev = MTRR_TYPE_UNCACHABLE;
  *curr = MTRR_TYPE_UNCACHABLE;
  return 1;
 }

 if ((*prev == MTRR_TYPE_WRBACK && *curr == MTRR_TYPE_WRTHROUGH) ||
     (*prev == MTRR_TYPE_WRTHROUGH && *curr == MTRR_TYPE_WRBACK)) {
  *prev = MTRR_TYPE_WRTHROUGH;
  *curr = MTRR_TYPE_WRTHROUGH;
 }

 if (*prev != *curr) {
  *prev = MTRR_TYPE_UNCACHABLE;
  *curr = MTRR_TYPE_UNCACHABLE;
  return 1;
 }

 return 0;
}
