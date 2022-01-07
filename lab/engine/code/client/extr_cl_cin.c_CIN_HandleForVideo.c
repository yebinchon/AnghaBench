
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* fileName; } ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int MAX_VIDEO_HANDLES ;
 TYPE_1__* cinTable ;

__attribute__((used)) static int CIN_HandleForVideo(void) {
 int i;

 for ( i = 0 ; i < MAX_VIDEO_HANDLES ; i++ ) {
  if ( cinTable[i].fileName[0] == 0 ) {
   return i;
  }
 }
 Com_Error( ERR_DROP, "CIN_HandleForVideo: none free" );
 return -1;
}
