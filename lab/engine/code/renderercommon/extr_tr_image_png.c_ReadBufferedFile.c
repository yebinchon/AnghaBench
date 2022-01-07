
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct BufferedFile {scalar_t__ Length; scalar_t__ BytesLeft; int * Buffer; int * Ptr; } ;
typedef int byte ;
struct TYPE_2__ {scalar_t__ (* FS_ReadFile ) (char*,void**) ;int (* Free ) (struct BufferedFile*) ;struct BufferedFile* (* Malloc ) (int) ;} ;


 TYPE_1__ ri ;
 struct BufferedFile* stub1 (int) ;
 scalar_t__ stub2 (char*,void**) ;
 int stub3 (struct BufferedFile*) ;

__attribute__((used)) static struct BufferedFile *ReadBufferedFile(const char *name)
{
 struct BufferedFile *BF;
 union {
  byte *b;
  void *v;
 } buffer;





 if(!name)
 {
  return(((void*)0));
 }





 BF = ri.Malloc(sizeof(struct BufferedFile));
 if(!BF)
 {
  return(((void*)0));
 }





 BF->Length = 0;
 BF->Buffer = ((void*)0);
 BF->Ptr = ((void*)0);
 BF->BytesLeft = 0;





 BF->Length = ri.FS_ReadFile((char *) name, &buffer.v);
 BF->Buffer = buffer.b;





 if(!(BF->Buffer && (BF->Length > 0)))
 {
  ri.Free(BF);

  return(((void*)0));
 }





 BF->Ptr = BF->Buffer;
 BF->BytesLeft = BF->Length;

 return(BF);
}
