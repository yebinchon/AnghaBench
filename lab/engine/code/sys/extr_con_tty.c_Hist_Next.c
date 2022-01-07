
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int field_t ;


 int CON_HISTORY ;
 int assert (int) ;
 int hist_count ;
 int hist_current ;
 int * ttyEditLines ;

field_t *Hist_Next( void )
{
 assert(hist_count <= CON_HISTORY);
 assert(hist_count >= 0);
 assert(hist_current >= -1);
 assert(hist_current <= hist_count);
 if (hist_current >= 0)
 {
  hist_current--;
 }
 if (hist_current == -1)
 {
  return ((void*)0);
 }
 return &(ttyEditLines[hist_current]);
}
