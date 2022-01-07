
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int osvi ;
typedef int WORD ;
typedef scalar_t__ ULONGLONG ;
struct TYPE_3__ {int member_0; int member_1; int member_3; int member_2; } ;
typedef TYPE_1__ OSVERSIONINFOEXW ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ RtlVerifyVersionInfo (TYPE_1__*,int,scalar_t__) ;
 int VER_BUILDNUMBER ;
 int VER_GREATER_EQUAL ;
 int VER_MAJORVERSION ;
 int VER_MINORVERSION ;
 scalar_t__ VerSetConditionMask (scalar_t__,int,int ) ;

BOOL _glfwIsWindows10BuildOrGreaterWin32(WORD build)
{
    OSVERSIONINFOEXW osvi = { sizeof(osvi), 10, 0, build };
    DWORD mask = VER_MAJORVERSION | VER_MINORVERSION | VER_BUILDNUMBER;
    ULONGLONG cond = VerSetConditionMask(0, VER_MAJORVERSION, VER_GREATER_EQUAL);
    cond = VerSetConditionMask(cond, VER_MINORVERSION, VER_GREATER_EQUAL);
    cond = VerSetConditionMask(cond, VER_BUILDNUMBER, VER_GREATER_EQUAL);



    return RtlVerifyVersionInfo(&osvi, mask, cond) == 0;
}
