
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpu_priv {scalar_t__ mapbase2; scalar_t__ mapbase1; } ;


 scalar_t__ TCNT ;
 unsigned long ioread16be (scalar_t__) ;

__attribute__((used)) static inline unsigned long read_tcnt32(struct tpu_priv *p)
{
 unsigned long tcnt;

 tcnt = ioread16be(p->mapbase1 + TCNT) << 16;
 tcnt |= ioread16be(p->mapbase2 + TCNT);
 return tcnt;
}
