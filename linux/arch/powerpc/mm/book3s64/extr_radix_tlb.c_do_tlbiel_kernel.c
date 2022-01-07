
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RIC_FLUSH_ALL ;
 int _tlbiel_pid (int ,int ) ;

__attribute__((used)) static void do_tlbiel_kernel(void *info)
{
 _tlbiel_pid(0, RIC_FLUSH_ALL);
}
