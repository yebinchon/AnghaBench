
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int idle_timeout; } ;
struct TYPE_4__ {TYPE_1__ transport_params; } ;


 TYPE_2__ quic_ctx ;
 int subtest (char*,int ) ;
 int test_bidirectional ;
 int test_downstream ;
 int test_even ;

void test_loss(void)
{
    subtest("even", test_even);

    uint64_t idle_timeout_backup = quic_ctx.transport_params.idle_timeout;
    quic_ctx.transport_params.idle_timeout = (uint64_t)300 * 1000;
    subtest("downstream", test_downstream);
    quic_ctx.transport_params.idle_timeout = (uint64_t)300 * 1000;
    subtest("bidirectional", test_bidirectional);
    quic_ctx.transport_params.idle_timeout = idle_timeout_backup;
}
