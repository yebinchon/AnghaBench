
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_secretstream_xchacha20poly1305_state ;


 int* STATE_COUNTER (int *) ;
 int crypto_secretstream_xchacha20poly1305_COUNTERBYTES ;
 int memset (int*,int ,int ) ;

__attribute__((used)) static inline void
_crypto_secretstream_xchacha20poly1305_counter_reset
    (crypto_secretstream_xchacha20poly1305_state *state)
{
    memset(STATE_COUNTER(state), 0,
           crypto_secretstream_xchacha20poly1305_COUNTERBYTES);
    STATE_COUNTER(state)[0] = 1;
}
