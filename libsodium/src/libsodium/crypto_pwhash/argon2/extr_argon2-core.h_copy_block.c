
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int v; } ;
typedef TYPE_1__ block ;


 int ARGON2_QWORDS_IN_BLOCK ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static inline void
copy_block(block *dst, const block *src)
{
    memcpy(dst->v, src->v, sizeof(uint64_t) * ARGON2_QWORDS_IN_BLOCK);
}
