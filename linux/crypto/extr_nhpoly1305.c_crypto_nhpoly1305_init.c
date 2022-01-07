
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct nhpoly1305_state {scalar_t__ nh_remaining; scalar_t__ buflen; int poly_state; } ;


 int poly1305_core_init (int *) ;
 struct nhpoly1305_state* shash_desc_ctx (struct shash_desc*) ;

int crypto_nhpoly1305_init(struct shash_desc *desc)
{
 struct nhpoly1305_state *state = shash_desc_ctx(desc);

 poly1305_core_init(&state->poly_state);
 state->buflen = 0;
 state->nh_remaining = 0;
 return 0;
}
