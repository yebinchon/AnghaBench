
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long time_t ;
typedef int MD_CTX ;


 int MD ;
 int MDFinal (unsigned char*,int *) ;
 int MDInit (int *) ;
 int MDPrint (unsigned char*) ;
 int MDUpdate (int *,unsigned char*,int) ;
 int TEST_BLOCK_COUNT ;
 int TEST_BLOCK_LEN ;
 int printf (char*,...) ;
 int time (long*) ;

__attribute__((used)) static void MDTimeTrial(void)
{
  MD_CTX context;
  time_t endTime, startTime;
  unsigned char block[TEST_BLOCK_LEN], digest[16];
  unsigned int i;

  printf("MD%d time trial. Digesting %d %d-byte blocks ...",
         MD, TEST_BLOCK_LEN, TEST_BLOCK_COUNT);


  for (i = 0; i < TEST_BLOCK_LEN; i++)
    block[i] = (unsigned char)(i & 0xff);


  time(&startTime);


  MDInit(&context);
  for (i = 0; i < TEST_BLOCK_COUNT; i++)
    MDUpdate(&context, block, TEST_BLOCK_LEN);
  MDFinal(digest, &context);


  time(&endTime);

  printf(" done\n");
  printf("Digest = ");
  MDPrint(digest);
  printf("\nTime = %ld seconds\n", (long)(endTime-startTime));
  printf("Speed = %ld bytes/second\n",
         (long)TEST_BLOCK_LEN * (long)TEST_BLOCK_COUNT/(endTime-startTime));
}
