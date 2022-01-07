
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int addr; } ;
typedef TYPE_2__ XrmValue ;
typedef scalar_t__ XrmDatabase ;
struct TYPE_5__ {int display; } ;
struct TYPE_7__ {TYPE_1__ x11; } ;


 char* XResourceManagerString (int ) ;
 int XrmDestroyDatabase (scalar_t__) ;
 scalar_t__ XrmGetResource (scalar_t__,char*,char*,char**,TYPE_2__*) ;
 scalar_t__ XrmGetStringDatabase (char*) ;
 TYPE_3__ _glfw ;
 float atof (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void getSystemContentScale(float* xscale, float* yscale)
{



    float xdpi = 96.f, ydpi = 96.f;




    char* rms = XResourceManagerString(_glfw.x11.display);
    if (rms)
    {
        XrmDatabase db = XrmGetStringDatabase(rms);
        if (db)
        {
            XrmValue value;
            char* type = ((void*)0);

            if (XrmGetResource(db, "Xft.dpi", "Xft.Dpi", &type, &value))
            {
                if (type && strcmp(type, "String") == 0)
                    xdpi = ydpi = atof(value.addr);
            }

            XrmDestroyDatabase(db);
        }
    }

    *xscale = xdpi / 96.f;
    *yscale = ydpi / 96.f;
}
