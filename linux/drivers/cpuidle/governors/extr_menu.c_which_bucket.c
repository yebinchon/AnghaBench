
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUCKETS ;

__attribute__((used)) static inline int which_bucket(unsigned int duration, unsigned long nr_iowaiters)
{
 int bucket = 0;







 if (nr_iowaiters)
  bucket = BUCKETS/2;

 if (duration < 10)
  return bucket;
 if (duration < 100)
  return bucket + 1;
 if (duration < 1000)
  return bucket + 2;
 if (duration < 10000)
  return bucket + 3;
 if (duration < 100000)
  return bucket + 4;
 return bucket + 5;
}
