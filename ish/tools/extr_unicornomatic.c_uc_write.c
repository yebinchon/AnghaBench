
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uc_engine ;
typedef int addr_t ;


 int uc_mem_write (int *,int ,void*,size_t) ;
 int uc_trycall (int ,char*) ;

void uc_write(uc_engine *uc, addr_t addr, void *buf, size_t size) {
    uc_trycall(uc_mem_write(uc, addr, buf, size), "uc_write");
}
