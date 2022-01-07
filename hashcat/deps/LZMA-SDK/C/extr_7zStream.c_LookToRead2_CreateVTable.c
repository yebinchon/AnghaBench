
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Seek; int Read; int Skip; int Look; } ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ CLookToRead2 ;


 int LookToRead2_Look_Exact ;
 int LookToRead2_Look_Lookahead ;
 int LookToRead2_Read ;
 int LookToRead2_Seek ;
 int LookToRead2_Skip ;

void LookToRead2_CreateVTable(CLookToRead2 *p, int lookahead)
{
  p->vt.Look = lookahead ?
      LookToRead2_Look_Lookahead :
      LookToRead2_Look_Exact;
  p->vt.Skip = LookToRead2_Skip;
  p->vt.Read = LookToRead2_Read;
  p->vt.Seek = LookToRead2_Seek;
}
