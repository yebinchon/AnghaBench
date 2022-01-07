
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * apbt_virt_address ;
 int iounmap (int *) ;

__attribute__((used)) static inline void apbt_clear_mapping(void)
{
 iounmap(apbt_virt_address);
 apbt_virt_address = ((void*)0);
}
