
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_device {int dummy; } ;


 int B53_CPU_PORT ;
 int B53_CPU_PORT_25 ;
 scalar_t__ is5325 (struct b53_device*) ;
 scalar_t__ is5365 (struct b53_device*) ;

__attribute__((used)) static inline int is_imp_port(struct b53_device *dev, int port)
{
 if (is5325(dev) || is5365(dev))
  return port == B53_CPU_PORT_25;
 else
  return port == B53_CPU_PORT;
}
