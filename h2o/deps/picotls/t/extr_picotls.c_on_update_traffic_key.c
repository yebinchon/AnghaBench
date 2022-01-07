
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ** traffic_secrets_t ;
typedef int ptls_update_traffic_key_t ;
typedef int ptls_t ;
struct TYPE_4__ {TYPE_1__* hash; } ;
struct TYPE_3__ {size_t digest_size; } ;


 int PTLS_MAX_DIGEST_SIZE ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (int ,void const*,size_t) ;
 int ok (int) ;
 TYPE_2__* ptls_get_cipher (int *) ;
 int **** ptls_get_data_ptr (int *) ;
 int zeroes_of_max_digest_size ;

__attribute__((used)) static int on_update_traffic_key(ptls_update_traffic_key_t *self, ptls_t *tls, int is_enc, size_t epoch, const void *secret)
{
    traffic_secrets_t *secrets = *ptls_get_data_ptr(tls);
    ok(memcmp((*secrets)[is_enc][epoch], zeroes_of_max_digest_size, PTLS_MAX_DIGEST_SIZE) == 0);

    size_t size = ptls_get_cipher(tls)->hash->digest_size;
    memcpy((*secrets)[is_enc][epoch], secret, size);
    return 0;
}
