
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_quicly_default_encrypt_cid_t {int dummy; } ;
typedef int quicly_cid_encryptor_t ;


 int generate_reset_token (struct st_quicly_default_encrypt_cid_t*,void*,void const*) ;

__attribute__((used)) static int default_generate_reset_token(quicly_cid_encryptor_t *_self, void *token, const void *cid)
{
    struct st_quicly_default_encrypt_cid_t *self = (void *)_self;
    generate_reset_token(self, token, cid);
    return 1;
}
