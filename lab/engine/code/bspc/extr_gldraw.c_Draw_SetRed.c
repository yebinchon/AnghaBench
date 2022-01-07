
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drawflag ;
 int glColor3f (int,int ,int ) ;

void Draw_SetRed (void)
{
 if (!drawflag)
  return;

 glColor3f (1,0,0);
}
