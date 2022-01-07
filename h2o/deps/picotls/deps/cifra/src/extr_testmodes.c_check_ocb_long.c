
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int cf_aes_context ;


 int TEST_CHECK (int) ;
 int cf_aes ;
 int cf_aes_init (int *,size_t*,size_t) ;
 int cf_ocb_encrypt (int *,int *,size_t*,size_t,size_t*,size_t,size_t*,int,size_t*,size_t*,size_t) ;
 scalar_t__ memcmp (size_t*,void const*,size_t) ;
 int memset (size_t*,int ,int) ;
 int write32_be (int,size_t*) ;

__attribute__((used)) static void check_ocb_long(size_t nkey, const void *expect_tag, size_t ntag)
{
  uint8_t C[22400];
  uint8_t K[32];
  uint8_t S[128] = { 0 };
  uint8_t N[12] = { 0 };
  size_t nC = 0;

  memset(K, 0, sizeof K);
  K[nkey - 1] = ntag * 8;

  cf_aes_context aes;
  cf_aes_init(&aes, K, nkey);

  for (size_t i = 0; i < 128; i++)
  {

    memset(N, 0, sizeof N);
    write32_be(3 * i + 1, N + 8);



    cf_ocb_encrypt(&cf_aes, &aes,
                   S, i,
                   S, i,
                   N, sizeof N,
                   C + nC,
                   C + nC + i,
                   ntag);
    nC += i + ntag;


    write32_be(3 * i + 2, N + 8);


    cf_ocb_encrypt(&cf_aes, &aes,
                   S, i,
                   ((void*)0), 0,
                   N, sizeof N,
                   C + nC,
                   C + nC + i,
                   ntag);
    nC += i + ntag;


    write32_be(3 * i + 3, N + 8);


    cf_ocb_encrypt(&cf_aes, &aes,
                   ((void*)0), 0,
                   S, i,
                   N, sizeof N,
                   ((void*)0),
                   C + nC,
                   ntag);
    nC += ntag;
  }


  write32_be(385, N + 8);


  uint8_t result[16];
  cf_ocb_encrypt(&cf_aes, &aes,
                 ((void*)0), 0,
                 C, nC,
                 N, sizeof N,
                 ((void*)0),
                 result, ntag);

  TEST_CHECK(memcmp(result, expect_tag, ntag) == 0);
}
