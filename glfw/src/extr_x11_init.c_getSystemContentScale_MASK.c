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
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
typedef  TYPE_2__ XrmValue ;
typedef  scalar_t__ XrmDatabase ;
struct TYPE_5__ {int /*<<< orphan*/  display; } ;
struct TYPE_7__ {TYPE_1__ x11; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,char*,char**,TYPE_2__*) ; 
 scalar_t__ FUNC3 (char*) ; 
 TYPE_3__ _glfw ; 
 float FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(float* xscale, float* yscale)
{
    // Start by assuming the default X11 DPI
    // NOTE: Some desktop environments (KDE) may remove the Xft.dpi field when it
    //       would be set to 96, so assume that is the case if we cannot find it
    float xdpi = 96.f, ydpi = 96.f;

    // NOTE: Basing the scale on Xft.dpi where available should provide the most
    //       consistent user experience (matches Qt, Gtk, etc), although not
    //       always the most accurate one
    char* rms = FUNC0(_glfw.x11.display);
    if (rms)
    {
        XrmDatabase db = FUNC3(rms);
        if (db)
        {
            XrmValue value;
            char* type = NULL;

            if (FUNC2(db, "Xft.dpi", "Xft.Dpi", &type, &value))
            {
                if (type && FUNC5(type, "String") == 0)
                    xdpi = ydpi = FUNC4(value.addr);
            }

            FUNC1(db);
        }
    }

    *xscale = xdpi / 96.f;
    *yscale = ydpi / 96.f;
}