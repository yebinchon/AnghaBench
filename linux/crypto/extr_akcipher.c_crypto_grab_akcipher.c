
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * frontend; } ;
struct crypto_akcipher_spawn {TYPE_1__ base; } ;


 int crypto_akcipher_type ;
 int crypto_grab_spawn (TYPE_1__*,char const*,int ,int ) ;

int crypto_grab_akcipher(struct crypto_akcipher_spawn *spawn, const char *name,
    u32 type, u32 mask)
{
 spawn->base.frontend = &crypto_akcipher_type;
 return crypto_grab_spawn(&spawn->base, name, type, mask);
}
