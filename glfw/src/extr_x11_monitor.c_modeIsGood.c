
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int modeFlags; } ;
typedef TYPE_1__ XRRModeInfo ;
typedef int GLFWbool ;


 int RR_Interlace ;

__attribute__((used)) static GLFWbool modeIsGood(const XRRModeInfo* mi)
{
    return (mi->modeFlags & RR_Interlace) == 0;
}
