
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer8_priv {scalar_t__ mapbase; } ;


 scalar_t__ TCORA ;
 scalar_t__ _8TCNT ;
 scalar_t__ _8TCR ;
 int iowrite16be (int,scalar_t__) ;

__attribute__((used)) static int timer8_enable(struct timer8_priv *p)
{
 iowrite16be(0xffff, p->mapbase + TCORA);
 iowrite16be(0x0000, p->mapbase + _8TCNT);
 iowrite16be(0x0c02, p->mapbase + _8TCR);

 return 0;
}
