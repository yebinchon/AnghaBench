
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int ns87415_check_atapi_dma(struct ata_queued_cmd *qc)
{
 return -EOPNOTSUPP;
}
