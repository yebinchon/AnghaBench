#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dbi ;
struct TYPE_5__ {int /*<<< orphan*/  helperWindowHandle; int /*<<< orphan*/  deviceNotificationHandle; } ;
struct TYPE_7__ {TYPE_1__ win32; } ;
struct TYPE_6__ {int dbcc_size; int /*<<< orphan*/  dbcc_classguid; int /*<<< orphan*/  dbcc_devicetype; } ;
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  GLFWbool ;
typedef  int /*<<< orphan*/  DEV_BROADCAST_HDR ;
typedef  TYPE_2__ DEV_BROADCAST_DEVICEINTERFACE_W ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DBT_DEVTYP_DEVICEINTERFACE ; 
 int /*<<< orphan*/  DEVICE_NOTIFY_WINDOW_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/  GUID_DEVINTERFACE_HID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int WS_CLIPCHILDREN ; 
 int WS_CLIPSIBLINGS ; 
 int /*<<< orphan*/  WS_EX_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  _GLFW_WNDCLASSNAME ; 
 TYPE_3__ _glfw ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static GLFWbool FUNC9(void)
{
    MSG msg;

    _glfw.win32.helperWindowHandle =
        FUNC0(WS_EX_OVERLAPPEDWINDOW,
                        _GLFW_WNDCLASSNAME,
                        L"GLFW message window",
                        WS_CLIPSIBLINGS | WS_CLIPCHILDREN,
                        0, 0, 1, 1,
                        NULL, NULL,
                        FUNC2(NULL),
                        NULL);

    if (!_glfw.win32.helperWindowHandle)
    {
        FUNC8(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to create helper window");
        return GLFW_FALSE;
    }

    // HACK: The command to the first ShowWindow call is ignored if the parent
    //       process passed along a STARTUPINFO, so clear that with a no-op call
    FUNC5(_glfw.win32.helperWindowHandle, SW_HIDE);

    // Register for HID device notifications
    {
        DEV_BROADCAST_DEVICEINTERFACE_W dbi;
        FUNC7(&dbi, sizeof(dbi));
        dbi.dbcc_size = sizeof(dbi);
        dbi.dbcc_devicetype = DBT_DEVTYP_DEVICEINTERFACE;
        dbi.dbcc_classguid = GUID_DEVINTERFACE_HID;

        _glfw.win32.deviceNotificationHandle =
            FUNC4(_glfw.win32.helperWindowHandle,
                                        (DEV_BROADCAST_HDR*) &dbi,
                                        DEVICE_NOTIFY_WINDOW_HANDLE);
    }

    while (FUNC3(&msg, _glfw.win32.helperWindowHandle, 0, 0, PM_REMOVE))
    {
        FUNC6(&msg);
        FUNC1(&msg);
    }

   return GLFW_TRUE;
}