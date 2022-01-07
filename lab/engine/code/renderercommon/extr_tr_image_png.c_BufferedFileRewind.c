
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BufferedFile {unsigned int Ptr; unsigned int Buffer; unsigned int BytesLeft; unsigned int Length; } ;
typedef int qboolean ;


 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean BufferedFileRewind(struct BufferedFile *BF, unsigned Offset)
{
 unsigned BytesRead;





 if(!BF)
 {
  return(qfalse);
 }





 if(Offset == (unsigned)-1)
 {
  BF->Ptr = BF->Buffer;
  BF->BytesLeft = BF->Length;

  return(qtrue);
 }





 BytesRead = BF->Ptr - BF->Buffer;





 if(Offset > BytesRead)
 {
  return(qfalse);
 }





 BF->Ptr -= Offset;
 BF->BytesLeft += Offset;

 return(qtrue);
}
