
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 void* GetMemory (int) ;
 int Q_filelength (int *) ;
 int SEEK_SET ;
 int * SafeOpenRead (char*) ;
 int SafeRead (int *,void*,int) ;
 int fclose (int *) ;
 int fseek (int *,int,int ) ;

int LoadFile (char *filename, void **bufferptr, int offset, int length)
{
 FILE *f;
 void *buffer;

 f = SafeOpenRead(filename);
 fseek(f, offset, SEEK_SET);
 if (!length) length = Q_filelength(f);
 buffer = GetMemory(length+1);
 ((char *)buffer)[length] = 0;
 SafeRead(f, buffer, length);
 fclose(f);

 *bufferptr = buffer;
 return length;
}
