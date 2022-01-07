
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long FS_ReadFileDir (char const*,int *,int ,void**) ;
 int qfalse ;

long FS_ReadFile(const char *qpath, void **buffer)
{
 return FS_ReadFileDir(qpath, ((void*)0), qfalse, buffer);
}
