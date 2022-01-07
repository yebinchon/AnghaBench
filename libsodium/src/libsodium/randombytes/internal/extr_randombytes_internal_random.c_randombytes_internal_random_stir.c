
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ ssize_t ;
typedef int ULONG ;
struct TYPE_4__ {int initialized; scalar_t__ getentropy_available; scalar_t__ getrandom_available; int random_data_source_fd; int pid; } ;
struct TYPE_3__ {scalar_t__ nonce; size_t rnd32_outleft; int initialized; scalar_t__ key; int rnd32; } ;
typedef int PVOID ;


 int RtlGenRandom (int ,int ) ;
 int arc4random_buf (scalar_t__,int) ;
 int assert (int) ;
 int getpid () ;
 TYPE_2__ global ;
 int memset (int ,int ,int) ;
 scalar_t__ randombytes_getentropy (scalar_t__,int) ;
 int randombytes_internal_random_init () ;
 scalar_t__ randombytes_linux_getrandom (scalar_t__,int) ;
 scalar_t__ safe_read (int,scalar_t__,int) ;
 scalar_t__ sodium_hrtime () ;
 int sodium_misuse () ;
 TYPE_1__ stream ;

__attribute__((used)) static void
randombytes_internal_random_stir(void)
{
    stream.nonce = sodium_hrtime();
    assert(stream.nonce != (uint64_t) 0U);
    memset(stream.rnd32, 0, sizeof stream.rnd32);
    stream.rnd32_outleft = (size_t) 0U;
    if (global.initialized == 0) {
        randombytes_internal_random_init();
        global.initialized = 1;
    }
    if (global.random_data_source_fd == -1 ||
        safe_read(global.random_data_source_fd, stream.key,
                  sizeof stream.key) != (ssize_t) sizeof stream.key) {
        sodium_misuse();
    }
    stream.initialized = 1;
}
