
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ghes {TYPE_2__* generic; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 scalar_t__ ACPI_HEST_TYPE_GENERIC_ERROR_V2 ;

__attribute__((used)) static inline bool is_hest_type_generic_v2(struct ghes *ghes)
{
 return ghes->generic->header.type == ACPI_HEST_TYPE_GENERIC_ERROR_V2;
}
