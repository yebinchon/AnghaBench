
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int ULONG ;
struct TYPE_2__ {scalar_t__ getrandom_available; int random_data_source_fd; } ;
typedef int PVOID ;


 int COMPILER_ASSERT (int) ;
 int RtlGenRandom (int ,int ) ;
 size_t const ULLONG_MAX ;
 int assert (int) ;
 int randombytes_BYTES_MAX ;
 scalar_t__ randombytes_linux_getrandom (void* const,size_t const) ;
 int randombytes_sysrandom_stir_if_needed () ;
 scalar_t__ safe_read (int,void* const,size_t const) ;
 int sodium_misuse () ;
 TYPE_1__ stream ;

__attribute__((used)) static void
randombytes_sysrandom_buf(void * const buf, const size_t size)
{
    randombytes_sysrandom_stir_if_needed();
    if (stream.random_data_source_fd == -1 ||
        safe_read(stream.random_data_source_fd, buf, size) != (ssize_t) size) {
        sodium_misuse();
    }
}
