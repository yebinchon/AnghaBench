
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cursor; } ;
typedef TYPE_1__ field_t ;


 int CON_HISTORY ;
 int assert (int) ;
 int hist_count ;
 int hist_current ;
 TYPE_1__* ttyEditLines ;

void Hist_Add(field_t *field)
{
 int i;


 if (!field->cursor)
  return;

 assert(hist_count <= CON_HISTORY);
 assert(hist_count >= 0);
 assert(hist_current >= -1);
 assert(hist_current <= hist_count);

 for (i=CON_HISTORY-1; i>0; i--)
 {
  ttyEditLines[i] = ttyEditLines[i-1];
 }
 ttyEditLines[0] = *field;
 if (hist_count<CON_HISTORY)
 {
  hist_count++;
 }
 hist_current = -1;
}
