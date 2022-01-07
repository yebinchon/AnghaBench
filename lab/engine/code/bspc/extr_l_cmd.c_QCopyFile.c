
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreatePath (char*) ;
 int FreeMemory (void*) ;
 int LoadFile (char*,void**,int ,int ) ;
 int SaveFile (char*,void*,int) ;

void QCopyFile (char *from, char *to)
{
 void *buffer;
 int length;

 length = LoadFile (from, &buffer, 0, 0);
 CreatePath (to);
 SaveFile (to, buffer, length);
 FreeMemory(buffer);
}
