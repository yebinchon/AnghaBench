
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * frontend; } ;
struct crypto_aead_spawn {TYPE_1__ base; } ;


 int crypto_aead_type ;
 int crypto_grab_spawn (TYPE_1__*,char const*,int ,int ) ;

int crypto_grab_aead(struct crypto_aead_spawn *spawn, const char *name,
       u32 type, u32 mask)
{
 spawn->base.frontend = &crypto_aead_type;
 return crypto_grab_spawn(&spawn->base, name, type, mask);
}
