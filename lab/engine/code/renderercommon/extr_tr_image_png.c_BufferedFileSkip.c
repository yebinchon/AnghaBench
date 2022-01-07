
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BufferedFile {unsigned int BytesLeft; int Ptr; } ;
typedef int qboolean ;


 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean BufferedFileSkip(struct BufferedFile *BF, unsigned Offset)
{




 if(!BF)
 {
  return(qfalse);
 }





 if(Offset > BF->BytesLeft)
 {
  return(qfalse);
 }





 BF->Ptr += Offset;
 BF->BytesLeft -= Offset;

 return(qtrue);
}
