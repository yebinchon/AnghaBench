
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bp; int tp; scalar_t__ lp; } ;
typedef TYPE_1__ Tokenrow ;


 int memmove (int ,scalar_t__,int) ;

void
movetokenrow(Tokenrow *dtr, Tokenrow *str)
{
 int nby;


 nby = (char *)str->lp - (char *)str->bp;
 memmove(dtr->tp, str->bp, nby);
}
