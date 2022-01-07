
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ version; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;


 int DIAG308_RC_OK ;
 int DIAG308_STORE ;
 scalar_t__ IPL_MAX_SUPPORTED_VERSION ;
 int __diag308 (int ,TYPE_2__*) ;
 TYPE_2__ ipl_block ;
 int ipl_block_valid ;

void store_ipl_parmblock(void)
{
 int rc;

 rc = __diag308(DIAG308_STORE, &ipl_block);
 if (rc == DIAG308_RC_OK &&
     ipl_block.hdr.version <= IPL_MAX_SUPPORTED_VERSION)
  ipl_block_valid = 1;
}
