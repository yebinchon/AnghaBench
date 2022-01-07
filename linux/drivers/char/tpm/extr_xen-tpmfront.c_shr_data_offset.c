
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vtpm_shared_page {int nr_extra_pages; } ;



__attribute__((used)) static unsigned int shr_data_offset(struct vtpm_shared_page *shr)
{
 return sizeof(*shr) + sizeof(u32) * shr->nr_extra_pages;
}
