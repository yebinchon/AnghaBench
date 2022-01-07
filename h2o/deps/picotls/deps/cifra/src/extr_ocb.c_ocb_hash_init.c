
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i; int sum; int offset; } ;
typedef TYPE_1__ ocb_hash ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void ocb_hash_init(ocb_hash *h)
{
  memset(h->offset, 0, sizeof h->offset);
  memset(h->sum, 0, sizeof h->sum);
  h->i = 1;
}
