
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_cbcmac_stream ;
typedef int cf_aes_context ;


 int TEST_CHECK (int) ;
 int cf_aes ;
 int cf_aes_init (int *,void const*,size_t) ;
 int cf_cbcmac_stream_init (int *,int *,int *) ;
 int cf_cbcmac_stream_pad_final (int *,int *) ;
 int cf_cbcmac_stream_update (int *,void const*,size_t) ;
 scalar_t__ memcmp (int *,void const*,int) ;

__attribute__((used)) static void cbcmac_vector(const void *tag_expect, size_t ntag,
                          const void *key, size_t nkey,
                          const void *msg, size_t nmsg)
{
  uint8_t tag[16];

  cf_aes_context aes;
  cf_aes_init(&aes, key, nkey);

  cf_cbcmac_stream cm;
  cf_cbcmac_stream_init(&cm, &cf_aes, &aes);
  cf_cbcmac_stream_update(&cm, msg, nmsg);
  cf_cbcmac_stream_pad_final(&cm, tag);

  TEST_CHECK(sizeof tag == ntag);
  TEST_CHECK(memcmp(tag, tag_expect, sizeof tag) == 0);
}
