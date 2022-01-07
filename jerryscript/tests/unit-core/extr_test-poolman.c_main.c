
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;


 int TEST_ASSERT (int) ;
 size_t TEST_CHUNK_SIZE ;
 int TEST_INIT () ;
 size_t TEST_MAX_SUB_ITERS ;
 int * data ;
 int jmem_finalize () ;
 int jmem_heap_stats_print () ;
 int jmem_init () ;
 scalar_t__ jmem_pools_alloc (size_t) ;
 int jmem_pools_collect_empty () ;
 int jmem_pools_free (scalar_t__*,size_t) ;
 int memcmp (int ,scalar_t__*,size_t) ;
 int memcpy (int ,scalar_t__*,size_t) ;
 scalar_t__** ptrs ;
 int rand () ;
 scalar_t__ test_iters ;

int
main (void)
{
  TEST_INIT ();

  jmem_init ();

  for (uint32_t i = 0; i < test_iters; i++)
  {
    const size_t subiters = ((size_t) rand () % TEST_MAX_SUB_ITERS) + 1;

    for (size_t j = 0; j < subiters; j++)
    {
      ptrs[j] = (uint8_t *) jmem_pools_alloc (TEST_CHUNK_SIZE);

      if (ptrs[j] != ((void*)0))
      {
        for (size_t k = 0; k < TEST_CHUNK_SIZE; k++)
        {
          ptrs[j][k] = (uint8_t) (rand () % 256);
        }

        memcpy (data[j], ptrs[j], TEST_CHUNK_SIZE);
      }
    }



    for (size_t j = 0; j < subiters; j++)
    {
      if (rand () % 256 == 0)
      {
        jmem_pools_collect_empty ();
      }

      if (ptrs[j] != ((void*)0))
      {
        TEST_ASSERT (!memcmp (data[j], ptrs[j], TEST_CHUNK_SIZE));

        jmem_pools_free (ptrs[j], TEST_CHUNK_SIZE);
      }
    }
  }





  jmem_finalize ();

  return 0;
}
