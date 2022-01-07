
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; } ;
struct TYPE_4__ {TYPE_1__ linjs; } ;
typedef TYPE_2__ _GLFWjoystick ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int compareJoysticks(const void* fp, const void* sp)
{
    const _GLFWjoystick* fj = fp;
    const _GLFWjoystick* sj = sp;
    return strcmp(fj->linjs.path, sj->linjs.path);
}
