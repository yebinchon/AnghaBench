
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cdmm_work_dev {int (* fn ) (struct mips_cdmm_device*) ;struct mips_cdmm_device* dev; } ;



__attribute__((used)) static long mips_cdmm_int_work(void *data)
{
 struct mips_cdmm_work_dev *work = data;
 int (*fn)(struct mips_cdmm_device *) = work->fn;

 return fn(work->dev);
}
