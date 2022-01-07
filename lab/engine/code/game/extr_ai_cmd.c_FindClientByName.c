
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {int maxclients; } ;


 int ClientName (int,char*,int) ;
 int MAX_INFO_STRING ;
 int Q_stricmp (char*,char*) ;
 TYPE_1__ level ;
 scalar_t__ stristr (char*,char*) ;

int FindClientByName(char *name) {
 int i;
 char buf[MAX_INFO_STRING];

 for (i = 0; i < level.maxclients; i++) {
  ClientName(i, buf, sizeof(buf));
  if (!Q_stricmp(buf, name)) return i;
 }
 for (i = 0; i < level.maxclients; i++) {
  ClientName(i, buf, sizeof(buf));
  if (stristr(buf, name)) return i;
 }
 return -1;
}
