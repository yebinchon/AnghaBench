
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {scalar_t__ status; int looping; } ;


 scalar_t__ FMV_EOF ;
 int MAX_VIDEO_HANDLES ;
 TYPE_1__* cinTable ;

void CIN_SetLooping(int handle, qboolean loop) {
 if (handle < 0 || handle>= MAX_VIDEO_HANDLES || cinTable[handle].status == FMV_EOF) return;
 cinTable[handle].looping = loop;
}
