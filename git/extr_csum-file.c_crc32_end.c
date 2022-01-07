
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hashfile {int crc32; scalar_t__ do_crc; } ;



uint32_t crc32_end(struct hashfile *f)
{
 f->do_crc = 0;
 return f->crc32;
}
