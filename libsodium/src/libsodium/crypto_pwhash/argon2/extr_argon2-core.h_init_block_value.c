
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int v; } ;
typedef TYPE_1__ block ;


 int memset (int ,int ,int) ;

__attribute__((used)) static inline void
init_block_value(block *b, uint8_t in)
{
    memset(b->v, in, sizeof(b->v));
}
