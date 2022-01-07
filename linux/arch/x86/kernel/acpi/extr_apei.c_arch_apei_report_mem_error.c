
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cper_sec_mem_err {int dummy; } ;


 int apei_mce_report_mem_error (int,struct cper_sec_mem_err*) ;

void arch_apei_report_mem_error(int sev, struct cper_sec_mem_err *mem_err)
{



}
