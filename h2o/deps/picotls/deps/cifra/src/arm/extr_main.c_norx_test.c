
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int cf_norx32_encrypt (int *,int *,int *,int,int *,int,int *,int ,int *,int *) ;

__attribute__((used)) static void norx_test(void)
{
  uint8_t key[16] = { 0 };
  uint8_t msg[16] = { 0 };
  uint8_t aad[16] = { 0 };
  uint8_t nonce[8] = { 0 };
  uint8_t cipher[16] = { 0 };
  uint8_t tag[16] = { 0 };

  cf_norx32_encrypt(key,
                    nonce,
                    aad, sizeof aad,
                    msg, sizeof msg,
                    ((void*)0), 0,
                    cipher,
                    tag);
}
