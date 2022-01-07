
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mtu2_channel {TYPE_1__* mtu; } ;
struct TYPE_2__ {int has_clockevent; } ;


 int sh_mtu2_register_clockevent (struct sh_mtu2_channel*,char const*) ;

__attribute__((used)) static int sh_mtu2_register(struct sh_mtu2_channel *ch, const char *name)
{
 ch->mtu->has_clockevent = 1;
 sh_mtu2_register_clockevent(ch, name);

 return 0;
}
