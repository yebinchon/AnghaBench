
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; scalar_t__ extension; } ;


 int QFILETYPE_UNKNOWN ;
 TYPE_1__* quakefiletypes ;
 int stricmp (char*,scalar_t__) ;

int QuakeFileExtensionType(char *extension)
{
 int i;

 for (i = 0; quakefiletypes[i].extension; i++)
 {
  if (!stricmp(extension, quakefiletypes[i].extension))
  {
   return quakefiletypes[i].type;
  }
 }
 return QFILETYPE_UNKNOWN;
}
