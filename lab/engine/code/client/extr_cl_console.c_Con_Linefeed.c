
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {scalar_t__ realtime; } ;
struct TYPE_3__ {size_t current; size_t display; int linewidth; int* text; int totallines; scalar_t__ x; scalar_t__* times; } ;


 int COLOR_WHITE ;
 int ColorIndex (int ) ;
 size_t NUM_CON_TIMES ;
 TYPE_2__ cls ;
 TYPE_1__ con ;

void Con_Linefeed (qboolean skipnotify)
{
 int i;


 if (con.current >= 0)
 {
    if (skipnotify)
    con.times[con.current % NUM_CON_TIMES] = 0;
    else
    con.times[con.current % NUM_CON_TIMES] = cls.realtime;
 }

 con.x = 0;
 if (con.display == con.current)
  con.display++;
 con.current++;
 for(i=0; i<con.linewidth; i++)
  con.text[(con.current%con.totallines)*con.linewidth+i] = (ColorIndex(COLOR_WHITE)<<8) | ' ';
}
