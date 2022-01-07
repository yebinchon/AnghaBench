
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashfile {int do_crc; int crc32; } ;


 int crc32 (int ,int *,int ) ;

void crc32_begin(struct hashfile *f)
{
 f->crc32 = crc32(0, ((void*)0), 0);
 f->do_crc = 1;
}
