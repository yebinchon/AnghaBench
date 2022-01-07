
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* includepath; } ;
typedef TYPE_1__ source_t ;


 int PATHSEPERATOR_STR ;
 int Q_strncpyz (char*,char*,int) ;
 int strcat (char*,int ) ;
 size_t strlen (char*) ;

void PC_SetIncludePath(source_t *source, char *path)
{
 size_t len;

 Q_strncpyz(source->includepath, path, sizeof(source->includepath)-1);

 len = strlen(source->includepath);

 if (len > 0 && source->includepath[len-1] != '\\' &&
  source->includepath[len-1] != '/')
 {
  strcat(source->includepath, PATHSEPERATOR_STR);
 }
}
