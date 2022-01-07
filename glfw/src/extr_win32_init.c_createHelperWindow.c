
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dbi ;
struct TYPE_5__ {int helperWindowHandle; int deviceNotificationHandle; } ;
struct TYPE_7__ {TYPE_1__ win32; } ;
struct TYPE_6__ {int dbcc_size; int dbcc_classguid; int dbcc_devicetype; } ;
typedef int MSG ;
typedef int GLFWbool ;
typedef int DEV_BROADCAST_HDR ;
typedef TYPE_2__ DEV_BROADCAST_DEVICEINTERFACE_W ;


 int CreateWindowExW (int ,int ,char*,int,int ,int ,int,int,int *,int *,int ,int *) ;
 int DBT_DEVTYP_DEVICEINTERFACE ;
 int DEVICE_NOTIFY_WINDOW_HANDLE ;
 int DispatchMessageW (int *) ;
 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 int GUID_DEVINTERFACE_HID ;
 int GetModuleHandleW (int *) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageW (int *,int ,int ,int ,int ) ;
 int RegisterDeviceNotificationW (int ,int *,int ) ;
 int SW_HIDE ;
 int ShowWindow (int ,int ) ;
 int TranslateMessage (int *) ;
 int WS_CLIPCHILDREN ;
 int WS_CLIPSIBLINGS ;
 int WS_EX_OVERLAPPEDWINDOW ;
 int ZeroMemory (TYPE_2__*,int) ;
 int _GLFW_WNDCLASSNAME ;
 TYPE_3__ _glfw ;
 int _glfwInputErrorWin32 (int ,char*) ;

__attribute__((used)) static GLFWbool createHelperWindow(void)
{
    MSG msg;

    _glfw.win32.helperWindowHandle =
        CreateWindowExW(WS_EX_OVERLAPPEDWINDOW,
                        _GLFW_WNDCLASSNAME,
                        L"GLFW message window",
                        WS_CLIPSIBLINGS | WS_CLIPCHILDREN,
                        0, 0, 1, 1,
                        ((void*)0), ((void*)0),
                        GetModuleHandleW(((void*)0)),
                        ((void*)0));

    if (!_glfw.win32.helperWindowHandle)
    {
        _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to create helper window");
        return GLFW_FALSE;
    }



    ShowWindow(_glfw.win32.helperWindowHandle, SW_HIDE);


    {
        DEV_BROADCAST_DEVICEINTERFACE_W dbi;
        ZeroMemory(&dbi, sizeof(dbi));
        dbi.dbcc_size = sizeof(dbi);
        dbi.dbcc_devicetype = DBT_DEVTYP_DEVICEINTERFACE;
        dbi.dbcc_classguid = GUID_DEVINTERFACE_HID;

        _glfw.win32.deviceNotificationHandle =
            RegisterDeviceNotificationW(_glfw.win32.helperWindowHandle,
                                        (DEV_BROADCAST_HDR*) &dbi,
                                        DEVICE_NOTIFY_WINDOW_HANDLE);
    }

    while (PeekMessageW(&msg, _glfw.win32.helperWindowHandle, 0, 0, PM_REMOVE))
    {
        TranslateMessage(&msg);
        DispatchMessageW(&msg);
    }

   return GLFW_TRUE;
}
