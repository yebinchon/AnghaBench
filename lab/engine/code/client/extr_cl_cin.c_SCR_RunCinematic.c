
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIN_RunCinematic (scalar_t__) ;
 scalar_t__ CL_handle ;
 scalar_t__ MAX_VIDEO_HANDLES ;

void SCR_RunCinematic (void)
{
 if (CL_handle >= 0 && CL_handle < MAX_VIDEO_HANDLES) {
  CIN_RunCinematic(CL_handle);
 }
}
