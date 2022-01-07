
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct opal_fadump_mem_struct {int dummy; } ;


 int PAGE_ALIGN (int) ;

__attribute__((used)) static u64 opal_fadump_get_metadata_size(void)
{
 return PAGE_ALIGN(sizeof(struct opal_fadump_mem_struct));
}
