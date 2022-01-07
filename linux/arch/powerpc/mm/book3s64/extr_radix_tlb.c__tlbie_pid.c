
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __tlbie_pid (unsigned long,int const) ;
 int fixup_tlbie_pid (unsigned long) ;

__attribute__((used)) static inline void _tlbie_pid(unsigned long pid, unsigned long ric)
{
 asm volatile("ptesync": : :"memory");






 switch (ric) {
 case 128:
  __tlbie_pid(pid, 128);
  fixup_tlbie_pid(pid);
  break;
 case 129:
  __tlbie_pid(pid, 129);
  break;
 case 130:
 default:
  __tlbie_pid(pid, 130);
  fixup_tlbie_pid(pid);
 }
 asm volatile("eieio; tlbsync; ptesync": : :"memory");
}
