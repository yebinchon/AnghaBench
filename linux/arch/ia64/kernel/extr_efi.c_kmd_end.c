
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int num_pages; scalar_t__ start; } ;
typedef TYPE_1__ kern_memdesc_t ;


 int EFI_PAGE_SHIFT ;

__attribute__((used)) static inline u64
kmd_end(kern_memdesc_t *kmd)
{
 return (kmd->start + (kmd->num_pages << EFI_PAGE_SHIFT));
}
