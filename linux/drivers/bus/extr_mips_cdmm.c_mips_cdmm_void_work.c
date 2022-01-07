
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cdmm_work_dev {void (* fn ) (struct mips_cdmm_device*) ;struct mips_cdmm_device* dev; } ;



__attribute__((used)) static long mips_cdmm_void_work(void *data)
{
 struct mips_cdmm_work_dev *work = data;
 void (*fn)(struct mips_cdmm_device *) = work->fn;

 fn(work->dev);
 return 0;
}
