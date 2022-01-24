#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  serial; int /*<<< orphan*/ * dataSource; int /*<<< orphan*/  dataDevice; int /*<<< orphan*/ * clipboardSendString; int /*<<< orphan*/  dataDeviceManager; int /*<<< orphan*/  clipboardSendSize; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dataSourceListener ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

void FUNC9(const char* string)
{
    if (_glfw.wl.dataSource)
    {
        FUNC7(_glfw.wl.dataSource);
        _glfw.wl.dataSource = NULL;
    }

    if (_glfw.wl.clipboardSendString)
    {
        FUNC1(_glfw.wl.clipboardSendString);
        _glfw.wl.clipboardSendString = NULL;
    }

    _glfw.wl.clipboardSendString = FUNC2(string);
    if (!_glfw.wl.clipboardSendString)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: Impossible to allocate clipboard string");
        return;
    }
    _glfw.wl.clipboardSendSize = FUNC3(string);
    _glfw.wl.dataSource =
        FUNC4(_glfw.wl.dataDeviceManager);
    if (!_glfw.wl.dataSource)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: Impossible to create clipboard source");
        FUNC1(_glfw.wl.clipboardSendString);
        return;
    }
    FUNC6(_glfw.wl.dataSource,
                                &dataSourceListener,
                                NULL);
    FUNC8(_glfw.wl.dataSource, "text/plain;charset=utf-8");
    FUNC5(_glfw.wl.dataDevice,
                                 _glfw.wl.dataSource,
                                 _glfw.wl.serial);
}