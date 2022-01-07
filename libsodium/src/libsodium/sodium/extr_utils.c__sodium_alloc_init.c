
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwPageSize; } ;
typedef TYPE_1__ SYSTEM_INFO ;


 int CANARY_SIZE ;
 int COMPILER_ASSERT (int) ;
 int GetSystemInfo (TYPE_1__*) ;
 int _SC_PAGESIZE ;
 int* canary ;
 int page_size ;
 int randombytes_SEEDBYTES ;
 int randombytes_buf (int*,int) ;
 int randombytes_buf_deterministic (int*,int,int*) ;
 int* shielding_prekey ;
 int sodium_misuse () ;
 long sysconf (int ) ;

int
_sodium_alloc_init(void)
{
    COMPILER_ASSERT(sizeof shielding_prekey >= randombytes_SEEDBYTES);
    randombytes_buf(shielding_prekey, randombytes_SEEDBYTES);
    randombytes_buf_deterministic(canary, sizeof canary, shielding_prekey);
    shielding_prekey[0] ^= 0x01;
    randombytes_buf_deterministic(shielding_prekey, sizeof shielding_prekey, shielding_prekey);

    return 0;
}
