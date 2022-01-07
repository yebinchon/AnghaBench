
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum slb_index { ____Placeholder_slb_index } slb_index ;


 long EFAULT ;
 unsigned long __mk_vsid_data (unsigned long,int,unsigned long) ;
 int alloc_slb_index (int) ;
 int assert_slb_presence (int,unsigned long) ;
 int barrier () ;
 unsigned long get_vsid (unsigned long,unsigned long,int) ;
 unsigned long mk_esid_data (unsigned long,int,int) ;
 int slb_cache_update (unsigned long) ;

__attribute__((used)) static long slb_insert_entry(unsigned long ea, unsigned long context,
    unsigned long flags, int ssize, bool kernel)
{
 unsigned long vsid;
 unsigned long vsid_data, esid_data;
 enum slb_index index;

 vsid = get_vsid(context, ea, ssize);
 if (!vsid)
  return -EFAULT;
 barrier();

 index = alloc_slb_index(kernel);

 vsid_data = __mk_vsid_data(vsid, ssize, flags);
 esid_data = mk_esid_data(ea, ssize, index);







 assert_slb_presence(0, ea);
 asm volatile("slbmte %0, %1" : : "r" (vsid_data), "r" (esid_data));

 barrier();

 if (!kernel)
  slb_cache_update(esid_data);

 return 0;
}
