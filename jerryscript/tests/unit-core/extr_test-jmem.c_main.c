
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t BASIC_SIZE ;
 int TEST_ASSERT (int) ;
 int TEST_INIT () ;
 int ecma_finalize () ;
 int ecma_init () ;
 int jmem_finalize () ;
 scalar_t__ jmem_heap_alloc_block (size_t) ;
 int jmem_heap_free_block (size_t*,size_t) ;
 size_t* jmem_heap_realloc_block (size_t*,size_t,size_t) ;
 int jmem_init () ;

int
main (void)
{
  TEST_INIT ();

  jmem_init ();
  ecma_init ();

  {
    uint8_t *block1_p = (uint8_t *) jmem_heap_alloc_block (BASIC_SIZE);
    uint8_t *block2_p = (uint8_t *) jmem_heap_alloc_block (BASIC_SIZE);
    uint8_t *block3_p = (uint8_t *) jmem_heap_alloc_block (BASIC_SIZE);



    for (uint8_t i = 0; i < BASIC_SIZE; i++)
    {
      block2_p[i] = i;
    }


    block2_p = jmem_heap_realloc_block (block2_p, BASIC_SIZE, BASIC_SIZE * 2);



    for (uint8_t i = 0; i < BASIC_SIZE; i++)
    {
      TEST_ASSERT (block2_p[i] == i);
    }

    for (uint8_t i = BASIC_SIZE; i < BASIC_SIZE * 2; i++)
    {
      block2_p[i] = i;
    }

    uint8_t *block4_p = (uint8_t *) jmem_heap_alloc_block (BASIC_SIZE * 2);



    jmem_heap_free_block (block3_p, BASIC_SIZE);




    block2_p = (uint8_t *) jmem_heap_realloc_block (block2_p, BASIC_SIZE * 2, BASIC_SIZE * 3);



    for (uint8_t i = 0; i < BASIC_SIZE * 2; i++)
    {
      TEST_ASSERT (block2_p[i] == i);
    }


    block2_p = (uint8_t *) jmem_heap_realloc_block (block2_p, BASIC_SIZE * 3, BASIC_SIZE);



    for (uint8_t i = 0; i < BASIC_SIZE; i++)
    {
      TEST_ASSERT (block2_p[i] == i);
    }

    for (uint8_t i = 0; i < BASIC_SIZE; i++)
    {
      block1_p[i] = i;
    }


    block1_p = (uint8_t *) jmem_heap_realloc_block (block1_p, BASIC_SIZE, BASIC_SIZE * 2);



    for (uint8_t i = 0; i < BASIC_SIZE; i++)
    {
      TEST_ASSERT (block1_p[i] == i);
    }

    jmem_heap_free_block (block1_p, BASIC_SIZE * 2);
    jmem_heap_free_block (block2_p, BASIC_SIZE);
    jmem_heap_free_block (block4_p, BASIC_SIZE * 2);
  }

  ecma_finalize ();
  jmem_finalize ();

  return 0;
}
