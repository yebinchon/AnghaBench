
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_data {int addr2; int addr1; } ;


 int __invalidate_dcache_range (int ,int ) ;

__attribute__((used)) static void ipi_invalidate_dcache_range(void *arg)
{
 struct flush_data *fd = arg;
 __invalidate_dcache_range(fd->addr1, fd->addr2);
}
