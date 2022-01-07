
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct spu_context {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {size_t (* read ) (struct spu_context*,void*,size_t,int *) ;int (* get ) (struct spu_context*) ;} ;


 int snprintf (void*,size_t,char*,int ) ;
 TYPE_1__* spufs_coredump_read ;
 size_t stub1 (struct spu_context*,void*,size_t,int *) ;
 int stub2 (struct spu_context*) ;

__attribute__((used)) static ssize_t do_coredump_read(int num, struct spu_context *ctx, void *buffer,
    size_t size, loff_t *off)
{
 u64 data;
 int ret;

 if (spufs_coredump_read[num].read)
  return spufs_coredump_read[num].read(ctx, buffer, size, off);

 data = spufs_coredump_read[num].get(ctx);
 ret = snprintf(buffer, size, "0x%.16llx", data);
 if (ret >= size)
  return size;
 return ++ret;
}
