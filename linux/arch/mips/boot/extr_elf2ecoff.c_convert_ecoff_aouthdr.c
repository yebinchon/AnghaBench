
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aouthdr {void* gp_value; void** cprmask; void* gprmask; void* bss_start; void* data_start; void* text_start; void* entry; void* bsize; void* dsize; void* tsize; void* vstamp; void* magic; } ;


 void* swab16 (void*) ;
 void* swab32 (void*) ;

__attribute__((used)) static void convert_ecoff_aouthdr(struct aouthdr *a)
{
 a->magic = swab16(a->magic);
 a->vstamp = swab16(a->vstamp);
 a->tsize = swab32(a->tsize);
 a->dsize = swab32(a->dsize);
 a->bsize = swab32(a->bsize);
 a->entry = swab32(a->entry);
 a->text_start = swab32(a->text_start);
 a->data_start = swab32(a->data_start);
 a->bss_start = swab32(a->bss_start);
 a->gprmask = swab32(a->gprmask);
 a->cprmask[0] = swab32(a->cprmask[0]);
 a->cprmask[1] = swab32(a->cprmask[1]);
 a->cprmask[2] = swab32(a->cprmask[2]);
 a->cprmask[3] = swab32(a->cprmask[3]);
 a->gp_value = swab32(a->gp_value);
}
