
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int guid; } ;
typedef TYPE_1__ _GLFWmapping ;
struct TYPE_5__ {int mappingCount; TYPE_1__* mappings; } ;


 TYPE_3__ _glfw ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static _GLFWmapping* findMapping(const char* guid)
{
    int i;

    for (i = 0; i < _glfw.mappingCount; i++)
    {
        if (strcmp(_glfw.mappings[i].guid, guid) == 0)
            return _glfw.mappings + i;
    }

    return ((void*)0);
}
