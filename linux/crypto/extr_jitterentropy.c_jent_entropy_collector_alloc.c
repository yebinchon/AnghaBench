
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_data {unsigned int osr; int memaccessloops; int memblocks; int memblocksize; void* mem; } ;


 unsigned int JENT_DISABLE_MEMORY_ACCESS ;
 int JENT_MEMORY_ACCESSLOOPS ;
 int JENT_MEMORY_BLOCKS ;
 int JENT_MEMORY_BLOCKSIZE ;
 int JENT_MEMORY_SIZE ;
 int jent_gen_entropy (struct rand_data*) ;
 void* jent_zalloc (int) ;
 int jent_zfree (struct rand_data*) ;

struct rand_data *jent_entropy_collector_alloc(unsigned int osr,
            unsigned int flags)
{
 struct rand_data *entropy_collector;

 entropy_collector = jent_zalloc(sizeof(struct rand_data));
 if (!entropy_collector)
  return ((void*)0);

 if (!(flags & JENT_DISABLE_MEMORY_ACCESS)) {



  entropy_collector->mem = jent_zalloc(JENT_MEMORY_SIZE);
  if (!entropy_collector->mem) {
   jent_zfree(entropy_collector);
   return ((void*)0);
  }
  entropy_collector->memblocksize = JENT_MEMORY_BLOCKSIZE;
  entropy_collector->memblocks = JENT_MEMORY_BLOCKS;
  entropy_collector->memaccessloops = JENT_MEMORY_ACCESSLOOPS;
 }


 if (0 == osr)
  osr = 1;
 entropy_collector->osr = osr;


 jent_gen_entropy(entropy_collector);

 return entropy_collector;
}
