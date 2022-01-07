
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* text; char* address; size_t numLines; char*** lines; char* pings; } ;
typedef TYPE_1__ serverStatusInfo_t ;


 int Com_sprintf (char*,int,char*,int) ;
 int MAX_SERVERSTATUS_LINES ;
 int Q_strncpyz (char*,char const*,int) ;
 int UI_SortServerStatusInfo (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int qfalse ;
 int qtrue ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ trap_LAN_ServerStatus (char const*,char*,int) ;

__attribute__((used)) static int UI_GetServerStatusInfo( const char *serverAddress, serverStatusInfo_t *info ) {
 char *p, *score, *ping, *name;
 int i, len;

 if (info) {
  memset(info, 0, sizeof(*info));
 }


 if (serverAddress && *serverAddress == '\0') {
  return qfalse;
 }


 if (!info) {
  trap_LAN_ServerStatus( serverAddress, ((void*)0), 0);
  return qfalse;
 }

 if ( trap_LAN_ServerStatus( serverAddress, info->text, sizeof(info->text)) ) {
  Q_strncpyz(info->address, serverAddress, sizeof(info->address));
  p = info->text;
  info->numLines = 0;
  info->lines[info->numLines][0] = "Address";
  info->lines[info->numLines][1] = "";
  info->lines[info->numLines][2] = "";
  info->lines[info->numLines][3] = info->address;
  info->numLines++;

  while (p && *p) {
   p = strchr(p, '\\');
   if (!p) break;
   *p++ = '\0';
   if (*p == '\\')
    break;
   info->lines[info->numLines][0] = p;
   info->lines[info->numLines][1] = "";
   info->lines[info->numLines][2] = "";
   p = strchr(p, '\\');
   if (!p) break;
   *p++ = '\0';
   info->lines[info->numLines][3] = p;

   info->numLines++;
   if (info->numLines >= MAX_SERVERSTATUS_LINES)
    break;
  }

  if (info->numLines < MAX_SERVERSTATUS_LINES-3) {

   info->lines[info->numLines][0] = "";
   info->lines[info->numLines][1] = "";
   info->lines[info->numLines][2] = "";
   info->lines[info->numLines][3] = "";
   info->numLines++;

   info->lines[info->numLines][0] = "num";
   info->lines[info->numLines][1] = "score";
   info->lines[info->numLines][2] = "ping";
   info->lines[info->numLines][3] = "name";
   info->numLines++;

   i = 0;
   len = 0;
   while (p && *p) {
    if (*p == '\\')
     *p++ = '\0';
    score = p;
    p = strchr(p, ' ');
    if (!p)
     break;
    *p++ = '\0';
    ping = p;
    p = strchr(p, ' ');
    if (!p)
     break;
    *p++ = '\0';
    name = p;
    Com_sprintf(&info->pings[len], sizeof(info->pings)-len, "%d", i);
    info->lines[info->numLines][0] = &info->pings[len];
    len += strlen(&info->pings[len]) + 1;
    info->lines[info->numLines][1] = score;
    info->lines[info->numLines][2] = ping;
    info->lines[info->numLines][3] = name;
    info->numLines++;
    if (info->numLines >= MAX_SERVERSTATUS_LINES)
     break;
    p = strchr(p, '\\');
    if (!p)
     break;
    *p++ = '\0';

    i++;
   }
  }
  UI_SortServerStatusInfo( info );
  return qtrue;
 }
 return qfalse;
}
