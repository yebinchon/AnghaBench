
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BLK_MQ_MAX_DISPATCH_ORDER ;
 scalar_t__ ilog2 (unsigned int) ;
 unsigned int min (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline unsigned int queued_to_index(unsigned int queued)
{
 if (!queued)
  return 0;

 return min(BLK_MQ_MAX_DISPATCH_ORDER - 1, ilog2(queued) + 1);
}
