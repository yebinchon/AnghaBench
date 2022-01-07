
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int KECCAK_ROUNDS ;
 int * keccakf_rndc ;
 int keccakf_round (int *) ;

__attribute__((used)) static void keccakf(u64 st[25])
{
 int round;

 for (round = 0; round < KECCAK_ROUNDS; round++) {
  keccakf_round(st);

  st[0] ^= keccakf_rndc[round];
 }
}
