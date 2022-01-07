
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LAST_VISIBLE_CONTENTS ;

int VisibleContents (int contents)
{
 int i;

 for (i=1 ; i<=LAST_VISIBLE_CONTENTS ; i<<=1)
  if (contents & i )
   return i;

 return 0;
}
