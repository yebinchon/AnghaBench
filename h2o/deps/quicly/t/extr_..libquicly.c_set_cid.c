
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int cid; } ;
typedef TYPE_1__ quicly_cid_t ;
struct TYPE_6__ {int len; int base; } ;
typedef TYPE_2__ ptls_iovec_t ;


 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void set_cid(quicly_cid_t *dest, ptls_iovec_t src)
{
    memcpy(dest->cid, src.base, src.len);
    dest->len = src.len;
}
