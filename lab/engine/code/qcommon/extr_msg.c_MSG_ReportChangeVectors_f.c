
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*,int,scalar_t__) ;
 scalar_t__* pcount ;

void MSG_ReportChangeVectors_f( void ) {
 int i;
 for(i=0;i<256;i++) {
  if (pcount[i]) {
   Com_Printf("%d used %d\n", i, pcount[i]);
  }
 }
}
