
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer8_priv {int flags; } ;


 int FLAG_STARTED ;
 int timer8_enable (struct timer8_priv*) ;

__attribute__((used)) static int timer8_start(struct timer8_priv *p)
{
 int ret;

 if ((p->flags & FLAG_STARTED))
  return 0;

 ret = timer8_enable(p);
 if (!ret)
  p->flags |= FLAG_STARTED;

 return ret;
}
