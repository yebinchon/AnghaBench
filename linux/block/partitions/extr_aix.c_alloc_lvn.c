
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct parsed_partitions {int dummy; } ;
struct lvname {int dummy; } ;


 int GFP_KERNEL ;
 int LVM_MAXLVS ;
 int kfree (struct lvname*) ;
 struct lvname* kmalloc (size_t,int ) ;
 size_t read_lba (struct parsed_partitions*,int ,int *,size_t) ;

__attribute__((used)) static struct lvname *alloc_lvn(struct parsed_partitions *state, u32 lba)
{
 size_t count = sizeof(struct lvname) * LVM_MAXLVS;
 struct lvname *p;

 p = kmalloc(count, GFP_KERNEL);
 if (!p)
  return ((void*)0);

 if (read_lba(state, lba, (u8 *) p, count) < count) {
  kfree(p);
  return ((void*)0);
 }
 return p;
}
