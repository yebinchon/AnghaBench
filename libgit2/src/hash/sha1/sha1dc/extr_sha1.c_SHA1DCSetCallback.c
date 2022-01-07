
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int collision_block_callback ;
struct TYPE_3__ {int callback; } ;
typedef TYPE_1__ SHA1_CTX ;



void SHA1DCSetCallback(SHA1_CTX* ctx, collision_block_callback callback)
{
 ctx->callback = callback;
}
