
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RIC_FLUSH_ALL ;
 int _tlbie_pid (int ,int ) ;
 int do_tlbiel_kernel ;
 int on_each_cpu (int ,int *,int) ;
 scalar_t__ tlbie_capable ;

__attribute__((used)) static inline void _tlbiel_kernel_broadcast(void)
{
 on_each_cpu(do_tlbiel_kernel, ((void*)0), 1);
 if (tlbie_capable) {





  _tlbie_pid(0, RIC_FLUSH_ALL);
 }
}
