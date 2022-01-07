
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int client_random; } ;
typedef TYPE_1__ ptls_t ;
typedef int ptls_iovec_t ;


 int PTLS_HELLO_RANDOM_SIZE ;
 int ptls_iovec_init (int ,int ) ;

ptls_iovec_t ptls_get_client_random(ptls_t *tls)
{
    return ptls_iovec_init(tls->client_random, PTLS_HELLO_RANDOM_SIZE);
}
