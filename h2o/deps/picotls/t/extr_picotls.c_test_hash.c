
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int digest_size; int empty_digest; } ;
typedef TYPE_1__ ptls_hash_algorithm_t ;


 int PTLS_MAX_DIGEST_SIZE ;
 scalar_t__ memcmp (int *,int ,int ) ;
 int ok (int) ;
 int ptls_calc_hash (TYPE_1__*,int *,char*,int ) ;

__attribute__((used)) static void test_hash(ptls_hash_algorithm_t *hash)
{
    uint8_t digest[PTLS_MAX_DIGEST_SIZE];
    int ret = ptls_calc_hash(hash, digest, "", 0);
    ok(ret == 0);
    ok(memcmp(digest, hash->empty_digest, hash->digest_size) == 0);
}
