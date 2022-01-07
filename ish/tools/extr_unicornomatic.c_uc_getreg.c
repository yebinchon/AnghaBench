
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uc_engine ;


 int uc_reg_read (int *,int,int *) ;
 int uc_trycall (int ,char*) ;

uint32_t uc_getreg(uc_engine *uc, int reg_id) {
    uint32_t value;
    uc_trycall(uc_reg_read(uc, reg_id, &value), "uc_getreg");
    return value;
}
