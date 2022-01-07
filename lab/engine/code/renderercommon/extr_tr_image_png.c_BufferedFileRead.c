
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BufferedFile {unsigned int BytesLeft; void* Ptr; } ;



__attribute__((used)) static void *BufferedFileRead(struct BufferedFile *BF, unsigned Length)
{
 void *RetVal;





 if(!(BF && Length))
 {
  return(((void*)0));
 }





 if(Length > BF->BytesLeft)
 {
  return(((void*)0));
 }





 RetVal = BF->Ptr;





 BF->Ptr += Length;
 BF->BytesLeft -= Length;

 return(RetVal);
}
