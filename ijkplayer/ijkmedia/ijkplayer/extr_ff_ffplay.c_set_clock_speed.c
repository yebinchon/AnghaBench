
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double speed; int serial; } ;
typedef TYPE_1__ Clock ;


 int get_clock (TYPE_1__*) ;
 int set_clock (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void set_clock_speed(Clock *c, double speed)
{
    set_clock(c, get_clock(c), c->serial);
    c->speed = speed;
}
