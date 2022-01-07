
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ s64 ;


 int MAX_ALT ;
 unsigned int PPMU_LIMITED_PMC_OK ;
 unsigned int PPMU_LIMITED_PMC_REQD ;
 unsigned int PPMU_ONLY_COUNT_RUN ;
 scalar_t__** event_alternatives ;
 int find_alternative (scalar_t__) ;
 scalar_t__ find_alternative_bdecode (scalar_t__) ;
 int power5p_limited_pmc_event (scalar_t__) ;

__attribute__((used)) static int power5p_get_alternatives(u64 event, unsigned int flags, u64 alt[])
{
 int i, j, nalt = 1;
 int nlim;
 s64 ae;

 alt[0] = event;
 nalt = 1;
 nlim = power5p_limited_pmc_event(event);
 i = find_alternative(event);
 if (i >= 0) {
  for (j = 0; j < MAX_ALT; ++j) {
   ae = event_alternatives[i][j];
   if (ae && ae != event)
    alt[nalt++] = ae;
   nlim += power5p_limited_pmc_event(ae);
  }
 } else {
  ae = find_alternative_bdecode(event);
  if (ae > 0)
   alt[nalt++] = ae;
 }

 if (flags & PPMU_ONLY_COUNT_RUN) {
  j = nalt;
  for (i = 0; i < nalt; ++i) {
   switch (alt[i]) {
   case 0xf:
    alt[j++] = 0x600005;
    ++nlim;
    break;
   case 0x600005:
    alt[j++] = 0xf;
    break;
   case 0x100009:
    alt[j++] = 0x500009;
    ++nlim;
    break;
   case 0x500009:
    alt[j++] = 0x100009;
    alt[j++] = 0x200009;
    break;
   }
  }
  nalt = j;
 }

 if (!(flags & PPMU_LIMITED_PMC_OK) && nlim) {

  j = 0;
  for (i = 0; i < nalt; ++i) {
   if (!power5p_limited_pmc_event(alt[i])) {
    alt[j] = alt[i];
    ++j;
   }
  }
  nalt = j;
 } else if ((flags & PPMU_LIMITED_PMC_REQD) && nlim < nalt) {

  j = 0;
  for (i = 0; i < nalt; ++i) {
   if (power5p_limited_pmc_event(alt[i])) {
    alt[j] = alt[i];
    ++j;
   }
  }
  nalt = j;
 }

 return nalt;
}
