
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ii ;
typedef int bi ;
struct TYPE_8__ {unsigned char* pixels; int width; int height; } ;
struct TYPE_7__ {int bV5Size; int bV5Width; int bV5Height; int bV5Planes; int bV5BitCount; int bV5RedMask; int bV5GreenMask; int bV5BlueMask; int bV5AlphaMask; int xHotspot; int yHotspot; void* hbmColor; void* hbmMask; scalar_t__ fIcon; int bV5Compression; } ;
typedef TYPE_1__ ICONINFO ;
typedef int * HICON ;
typedef int HDC ;
typedef void* HBITMAP ;
typedef TYPE_2__ GLFWimage ;
typedef scalar_t__ GLFWbool ;
typedef int DWORD ;
typedef TYPE_1__ BITMAPV5HEADER ;
typedef int BITMAPINFO ;


 int BI_BITFIELDS ;
 void* CreateBitmap (int,int,int,int,int *) ;
 void* CreateDIBSection (int ,int *,int ,void**,int *,int ) ;
 int * CreateIconIndirect (TYPE_1__*) ;
 int DIB_RGB_COLORS ;
 int DeleteObject (void*) ;
 int GLFW_PLATFORM_ERROR ;
 int GetDC (int *) ;
 int ReleaseDC (int *,int ) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int _glfwInputErrorWin32 (int ,char*) ;

__attribute__((used)) static HICON createIcon(const GLFWimage* image,
                        int xhot, int yhot, GLFWbool icon)
{
    int i;
    HDC dc;
    HICON handle;
    HBITMAP color, mask;
    BITMAPV5HEADER bi;
    ICONINFO ii;
    unsigned char* target = ((void*)0);
    unsigned char* source = image->pixels;

    ZeroMemory(&bi, sizeof(bi));
    bi.bV5Size = sizeof(bi);
    bi.bV5Width = image->width;
    bi.bV5Height = -image->height;
    bi.bV5Planes = 1;
    bi.bV5BitCount = 32;
    bi.bV5Compression = BI_BITFIELDS;
    bi.bV5RedMask = 0x00ff0000;
    bi.bV5GreenMask = 0x0000ff00;
    bi.bV5BlueMask = 0x000000ff;
    bi.bV5AlphaMask = 0xff000000;

    dc = GetDC(((void*)0));
    color = CreateDIBSection(dc,
                             (BITMAPINFO*) &bi,
                             DIB_RGB_COLORS,
                             (void**) &target,
                             ((void*)0),
                             (DWORD) 0);
    ReleaseDC(((void*)0), dc);

    if (!color)
    {
        _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to create RGBA bitmap");
        return ((void*)0);
    }

    mask = CreateBitmap(image->width, image->height, 1, 1, ((void*)0));
    if (!mask)
    {
        _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to create mask bitmap");
        DeleteObject(color);
        return ((void*)0);
    }

    for (i = 0; i < image->width * image->height; i++)
    {
        target[0] = source[2];
        target[1] = source[1];
        target[2] = source[0];
        target[3] = source[3];
        target += 4;
        source += 4;
    }

    ZeroMemory(&ii, sizeof(ii));
    ii.fIcon = icon;
    ii.xHotspot = xhot;
    ii.yHotspot = yhot;
    ii.hbmMask = mask;
    ii.hbmColor = color;

    handle = CreateIconIndirect(&ii);

    DeleteObject(color);
    DeleteObject(mask);

    if (!handle)
    {
        if (icon)
        {
            _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                                 "Win32: Failed to create icon");
        }
        else
        {
            _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                                 "Win32: Failed to create cursor");
        }
    }

    return handle;
}
