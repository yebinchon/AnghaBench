
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int Q_stricmp (char const*,char const*) ;
 int qfalse ;
 int strlen (char const*) ;

qboolean FS_IsExt(const char *filename, const char *ext, int namelen)
{
 int extlen;

 extlen = strlen(ext);

 if(extlen > namelen)
  return qfalse;

 filename += namelen - extlen;

 return !Q_stricmp(filename, ext);
}
