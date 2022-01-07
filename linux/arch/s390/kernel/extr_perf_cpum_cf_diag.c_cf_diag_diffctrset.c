
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static void cf_diag_diffctrset(u64 *pstart, u64 *pstop, int counters)
{
 for (; --counters >= 0; ++pstart, ++pstop)
  if (*pstop >= *pstart)
   *pstop -= *pstart;
  else
   *pstop = *pstart - *pstop;
}
