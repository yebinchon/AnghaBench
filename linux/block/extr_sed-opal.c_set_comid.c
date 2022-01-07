
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int* extendedComID; } ;
struct opal_header {TYPE_1__ cp; } ;
struct opal_dev {scalar_t__ cmd; } ;



__attribute__((used)) static void set_comid(struct opal_dev *cmd, u16 comid)
{
 struct opal_header *hdr = (struct opal_header *)cmd->cmd;

 hdr->cp.extendedComID[0] = comid >> 8;
 hdr->cp.extendedComID[1] = comid;
 hdr->cp.extendedComID[2] = 0;
 hdr->cp.extendedComID[3] = 0;
}
