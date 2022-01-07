
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int dummy; } ;


 unsigned int AC_ERR_SYSTEM ;

__attribute__((used)) static unsigned int ata_dummy_qc_issue(struct ata_queued_cmd *qc)
{
 return AC_ERR_SYSTEM;
}
