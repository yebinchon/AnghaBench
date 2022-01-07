
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;


 char* BASEDIRNAME ;
 int Error (char*,char*,...) ;
 int Q_getwd (char*,int) ;
 int Q_strncasecmp (char*,char*,int) ;
 int gamedir ;
 int qdir ;
 int qprintf (char*,int ) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 int strncpy (int ,char*,int) ;

void SetQdirFromPath (char *path)
{
 char temp[1024];
 char *c;
 int len;

 if (!(path[0] == '/' || path[0] == '\\' || path[1] == ':'))
 {
  Q_getwd (temp, sizeof(temp));
  strcat (temp, path);
  path = temp;
 }



 len = strlen(BASEDIRNAME);
 for (c=path+strlen(path)-1 ; c != path ; c--)
  if (!Q_strncasecmp (c, BASEDIRNAME, len))
  {
   strncpy (qdir, path, c+len+1-path);
   qprintf ("qdir: %s\n", qdir);
   c += len+1;
   while (*c)
   {
    if (*c == '/' || *c == '\\')
    {
     strncpy (gamedir, path, c+1-path);
     qprintf ("gamedir: %s\n", gamedir);
     return;
    }
    c++;
   }
   Error ("No gamedir in %s", path);
   return;
  }
 Error ("SetQdirFromPath: no '%s' in %s", BASEDIRNAME, path);
}
