
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MEM_BLOCKSIZE ;
 int Q_filelength (int *) ;
 int * SafeOpenRead (char const*) ;
 int SafeRead (int *,void*,int) ;
 int fclose (int *) ;
 void* malloc (int) ;
 int memset (void*,int ,int) ;

int LoadFileBlock( const char *filename, void **bufferptr )
{
 FILE *f;
 int length, nBlock, nAllocSize;
 void *buffer;

 f = SafeOpenRead (filename);
 length = Q_filelength (f);
  nAllocSize = length;
  nBlock = nAllocSize % MEM_BLOCKSIZE;
  if ( nBlock > 0) {
    nAllocSize += MEM_BLOCKSIZE - nBlock;
  }
 buffer = malloc (nAllocSize+1);
  memset(buffer, 0, nAllocSize+1);
 SafeRead (f, buffer, length);
 fclose (f);

 *bufferptr = buffer;
 return length;
}
