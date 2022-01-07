
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_device {int dummy; } ;


 unsigned int MAX_WRITERS ;
 unsigned int array_index_nospec (unsigned int,unsigned int) ;
 struct pktcdvd_device** pkt_devs ;

__attribute__((used)) static struct pktcdvd_device *pkt_find_dev_from_minor(unsigned int dev_minor)
{
 if (dev_minor >= MAX_WRITERS)
  return ((void*)0);

 dev_minor = array_index_nospec(dev_minor, MAX_WRITERS);
 return pkt_devs[dev_minor];
}
