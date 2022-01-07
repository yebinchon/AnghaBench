
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* reachabilities; int size; } ;
typedef TYPE_1__ aas_routingcache_t ;


 scalar_t__ GetClearedMemory (int) ;
 int routingcachesize ;

aas_routingcache_t *AAS_AllocRoutingCache(int numtraveltimes)
{
 aas_routingcache_t *cache;
 int size;


 size = sizeof(aas_routingcache_t)
      + numtraveltimes * sizeof(unsigned short int)
      + numtraveltimes * sizeof(unsigned char);

 routingcachesize += size;

 cache = (aas_routingcache_t *) GetClearedMemory(size);
 cache->reachabilities = (unsigned char *) cache + sizeof(aas_routingcache_t)
        + numtraveltimes * sizeof(unsigned short int);
 cache->size = size;
 return cache;
}
