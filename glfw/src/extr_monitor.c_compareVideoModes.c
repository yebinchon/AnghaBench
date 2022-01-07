
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int redBits; int greenBits; int blueBits; int width; int height; int refreshRate; } ;
typedef TYPE_1__ GLFWvidmode ;



__attribute__((used)) static int compareVideoModes(const void* fp, const void* sp)
{
    const GLFWvidmode* fm = fp;
    const GLFWvidmode* sm = sp;
    const int fbpp = fm->redBits + fm->greenBits + fm->blueBits;
    const int sbpp = sm->redBits + sm->greenBits + sm->blueBits;
    const int farea = fm->width * fm->height;
    const int sarea = sm->width * sm->height;


    if (fbpp != sbpp)
        return fbpp - sbpp;


    if (farea != sarea)
        return farea - sarea;


    if (fm->width != sm->width)
        return fm->width - sm->width;


    return fm->refreshRate - sm->refreshRate;
}
