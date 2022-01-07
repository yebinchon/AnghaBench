
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_data {int addr2; int addr1; int vma; } ;


 int local_flush_cache_range (int ,int ,int ) ;

__attribute__((used)) static void ipi_flush_cache_range(void *arg)
{
 struct flush_data *fd = arg;
 local_flush_cache_range(fd->vma, fd->addr1, fd->addr2);
}
