
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int offset; } ;
typedef TYPE_1__ _GLFWjoyobjectWin32 ;



__attribute__((used)) static int compareJoystickObjects(const void* first, const void* second)
{
    const _GLFWjoyobjectWin32* fo = first;
    const _GLFWjoyobjectWin32* so = second;

    if (fo->type != so->type)
        return fo->type - so->type;

    return fo->offset - so->offset;
}
