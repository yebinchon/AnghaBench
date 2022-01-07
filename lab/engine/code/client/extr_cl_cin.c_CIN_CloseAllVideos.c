
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* fileName; } ;


 int CIN_StopCinematic (int) ;
 int MAX_VIDEO_HANDLES ;
 TYPE_1__* cinTable ;

void CIN_CloseAllVideos(void) {
 int i;

 for ( i = 0 ; i < MAX_VIDEO_HANDLES ; i++ ) {
  if (cinTable[i].fileName[0] != 0 ) {
   CIN_StopCinematic(i);
  }
 }
}
