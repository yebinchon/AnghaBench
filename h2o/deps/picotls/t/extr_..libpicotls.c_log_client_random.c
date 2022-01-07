
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int client_random; } ;
typedef TYPE_1__ ptls_t ;


 int CLIENT_RANDOM ;
 int PTLS_PROBE (int ,TYPE_1__*,int ) ;
 int alloca (int) ;
 int ptls_hexdump (int ,int ,int) ;

__attribute__((used)) static inline void log_client_random(ptls_t *tls)
{
    PTLS_PROBE(CLIENT_RANDOM, tls,
               ptls_hexdump(alloca(sizeof(tls->client_random) * 2 + 1), tls->client_random, sizeof(tls->client_random)));
}
