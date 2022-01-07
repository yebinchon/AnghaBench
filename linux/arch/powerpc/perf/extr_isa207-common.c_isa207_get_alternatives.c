
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MAX_ALT ;
 unsigned int PPMU_ONLY_COUNT_RUN ;
 int find_alternative (int,unsigned int const**,int) ;

int isa207_get_alternatives(u64 event, u64 alt[], int size, unsigned int flags,
     const unsigned int ev_alt[][MAX_ALT])
{
 int i, j, num_alt = 0;
 u64 alt_event;

 alt[num_alt++] = event;
 i = find_alternative(event, ev_alt, size);
 if (i >= 0) {

  for (j = 0; j < MAX_ALT; ++j) {
   alt_event = ev_alt[i][j];
   if (alt_event && alt_event != event)
    alt[num_alt++] = alt_event;
  }
 }

 if (flags & PPMU_ONLY_COUNT_RUN) {




  j = num_alt;
  for (i = 0; i < num_alt; ++i) {
   switch (alt[i]) {
   case 0x1e:
    alt[j++] = 0x600f4;
    break;
   case 0x600f4:
    alt[j++] = 0x1e;
    break;
   case 0x2:
    alt[j++] = 0x500fa;
    break;
   case 0x500fa:
    alt[j++] = 0x2;
    break;
   }
  }
  num_alt = j;
 }

 return num_alt;
}
