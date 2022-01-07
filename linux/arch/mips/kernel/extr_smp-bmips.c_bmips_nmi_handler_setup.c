
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BMIPS_NMI_RESET_VEC ;
 int BMIPS_WARM_RESTART_VEC ;
 int bmips_reset_nmi_vec ;
 int bmips_reset_nmi_vec_end ;
 int bmips_smp_int_vec ;
 int bmips_smp_int_vec_end ;
 int bmips_wr_vec (int ,int ,int ) ;

__attribute__((used)) static inline void bmips_nmi_handler_setup(void)
{
 bmips_wr_vec(BMIPS_NMI_RESET_VEC, bmips_reset_nmi_vec,
  bmips_reset_nmi_vec_end);
 bmips_wr_vec(BMIPS_WARM_RESTART_VEC, bmips_smp_int_vec,
  bmips_smp_int_vec_end);
}
