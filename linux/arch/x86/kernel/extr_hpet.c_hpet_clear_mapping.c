
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * hpet_virt_address ;
 int iounmap (int *) ;

__attribute__((used)) static inline void hpet_clear_mapping(void)
{
 iounmap(hpet_virt_address);
 hpet_virt_address = ((void*)0);
}
