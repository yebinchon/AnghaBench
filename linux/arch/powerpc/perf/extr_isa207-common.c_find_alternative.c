
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int const u64 ;


 int MAX_ALT ;

__attribute__((used)) static int find_alternative(u64 event, const unsigned int ev_alt[][MAX_ALT], int size)
{
 int i, j;

 for (i = 0; i < size; ++i) {
  if (event < ev_alt[i][0])
   break;

  for (j = 0; j < MAX_ALT && ev_alt[i][j]; ++j)
   if (event == ev_alt[i][j])
    return i;
 }

 return -1;
}
