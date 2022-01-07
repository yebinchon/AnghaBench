
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {int dummy; } ;


 int amd_flush_garts () ;

__attribute__((used)) static void amd64_tlbflush(struct agp_memory *temp)
{
 amd_flush_garts();
}
