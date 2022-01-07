
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct input_absinfo {int value; } ;
struct TYPE_5__ {scalar_t__* absMap; int fd; struct input_absinfo* absInfo; } ;
struct TYPE_6__ {TYPE_1__ linjs; } ;
typedef TYPE_2__ _GLFWjoystick ;


 int ABS_CNT ;
 int EVIOCGABS (int) ;
 int handleAbsEvent (TYPE_2__*,int,int ) ;
 scalar_t__ ioctl (int ,int ,struct input_absinfo*) ;

__attribute__((used)) static void pollAbsState(_GLFWjoystick* js)
{
    for (int code = 0; code < ABS_CNT; code++)
    {
        if (js->linjs.absMap[code] < 0)
            continue;

        struct input_absinfo* info = &js->linjs.absInfo[code];

        if (ioctl(js->linjs.fd, EVIOCGABS(code), info) < 0)
            continue;

        handleAbsEvent(js, code, info->value);
    }
}
