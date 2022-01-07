
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int virt_to_bus (void*) ;

__attribute__((used)) static inline __be32 bus_addr(void * addr) {
    return cpu_to_be32 (virt_to_bus (addr));
}
