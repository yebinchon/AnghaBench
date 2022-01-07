
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long date; } ;
typedef TYPE_1__ entry_t ;


 int date_adj ;

__attribute__((used)) static inline void fix_date (long a, entry_t *B, entry_t *C) {
  long min = a, max = C->date;
  if (min > max) { min = max; max = a; }
  if (B->date < min) { B->date = min; date_adj++; }
  else if (B->date > max) { B->date = max; date_adj++; }
}
