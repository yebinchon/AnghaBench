
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EOPNOTSUPP ;


 int VECTOR_NUM_STATS ;

__attribute__((used)) static int vector_get_sset_count(struct net_device *dev, int sset)
{
 switch (sset) {
 case 128:
  return 0;
 case 129:
  return VECTOR_NUM_STATS;
 default:
  return -EOPNOTSUPP;
 }
}
