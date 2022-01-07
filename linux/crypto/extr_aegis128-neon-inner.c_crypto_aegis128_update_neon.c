
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aegis128_state {int dummy; } ;


 struct aegis128_state aegis128_load_state_neon (void*) ;
 int aegis128_save_state_neon (struct aegis128_state,void*) ;
 struct aegis128_state aegis128_update_neon (struct aegis128_state,int ) ;
 int preload_sbox () ;
 int vld1q_u8 (void const*) ;

void crypto_aegis128_update_neon(void *state, const void *msg)
{
 struct aegis128_state st = aegis128_load_state_neon(state);

 preload_sbox();

 st = aegis128_update_neon(st, vld1q_u8(msg));

 aegis128_save_state_neon(st, state);
}
