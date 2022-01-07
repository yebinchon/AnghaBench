
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int * cdb; } ;


 scalar_t__ ATAPI_MISC ;
 int EOPNOTSUPP ;
 int ali_atapi_dma ;
 scalar_t__ atapi_cmd_type (int ) ;

__attribute__((used)) static int ali_check_atapi_dma(struct ata_queued_cmd *qc)
{
 if (!ali_atapi_dma) {
  return -EOPNOTSUPP;
 }


 if (atapi_cmd_type(qc->cdb[0]) == ATAPI_MISC)
  return -EOPNOTSUPP;
 return 0;
}
