
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int random_data_source_fd; scalar_t__ initialized; scalar_t__ getrandom_available; } ;


 scalar_t__ close (int) ;
 TYPE_1__ stream ;

__attribute__((used)) static int
randombytes_sysrandom_close(void)
{
    int ret = -1;


    if (stream.random_data_source_fd != -1 &&
        close(stream.random_data_source_fd) == 0) {
        stream.random_data_source_fd = -1;
        stream.initialized = 0;
        ret = 0;
    }
    return ret;
}
