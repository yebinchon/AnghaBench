
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p_compressed_bm {int encoding; } ;



__attribute__((used)) static void dcbp_set_start(struct p_compressed_bm *p, int set)
{
 p->encoding = (p->encoding & ~0x80) | (set ? 0x80 : 0);
}
