
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct el_common {scalar_t__ sys_offset; } ;
struct el_TITAN_sysdata_mcheck {int p1_agperror; int p1_aperror; int p1_gperror; int p1_serror; int p0_agperror; int p0_aperror; int p0_gperror; int p0_serror; int c_misc; } ;


 int MCHK_DISPOSITION_UNKNOWN_ERROR ;
 int titan_parse_c_misc (int ,int) ;
 int titan_parse_p_chip (int,int ,int ,int ,int ,int) ;

int
titan_process_logout_frame(struct el_common *mchk_header, int print)
{
 struct el_TITAN_sysdata_mcheck *tmchk =
  (struct el_TITAN_sysdata_mcheck *)
  ((unsigned long)mchk_header + mchk_header->sys_offset);
 int status = MCHK_DISPOSITION_UNKNOWN_ERROR;

 status |= titan_parse_c_misc(tmchk->c_misc, print);
 status |= titan_parse_p_chip(0, tmchk->p0_serror, tmchk->p0_gperror,
         tmchk->p0_aperror, tmchk->p0_agperror,
         print);
 status |= titan_parse_p_chip(1, tmchk->p1_serror, tmchk->p1_gperror,
         tmchk->p1_aperror, tmchk->p1_agperror,
         print);

 return status;
}
