
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int Q_stricmp (char const*,char const*) ;
 int qfalse ;
 int qtrue ;
 int strlen (char const*) ;

qboolean COM_CompareExtension(const char *in, const char *ext)
{
 int inlen, extlen;

 inlen = strlen(in);
 extlen = strlen(ext);

 if(extlen <= inlen)
 {
  in += inlen - extlen;

  if(!Q_stricmp(in, ext))
   return qtrue;
 }

 return qfalse;
}
