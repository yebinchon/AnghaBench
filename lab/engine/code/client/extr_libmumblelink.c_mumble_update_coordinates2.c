
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uiVersion; int uiTick; int fCameraTop; int fCameraFront; int fCameraPosition; int fAvatarTop; int fAvatarFront; int fAvatarPosition; } ;


 int GetTickCount () ;
 TYPE_1__* lm ;
 int memcpy (int ,float*,int) ;

void mumble_update_coordinates2(float fAvatarPosition[3], float fAvatarFront[3], float fAvatarTop[3],
  float fCameraPosition[3], float fCameraFront[3], float fCameraTop[3])
{
 if (!lm)
  return;

 memcpy(lm->fAvatarPosition, fAvatarPosition, sizeof(lm->fAvatarPosition));
 memcpy(lm->fAvatarFront, fAvatarFront, sizeof(lm->fAvatarFront));
 memcpy(lm->fAvatarTop, fAvatarTop, sizeof(lm->fAvatarTop));
 memcpy(lm->fCameraPosition, fCameraPosition, sizeof(lm->fCameraPosition));
 memcpy(lm->fCameraFront, fCameraFront, sizeof(lm->fCameraFront));
 memcpy(lm->fCameraTop, fCameraTop, sizeof(lm->fCameraTop));
 lm->uiVersion = 2;
 lm->uiTick = GetTickCount();
}
