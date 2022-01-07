
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct PNG_ChunkHeader {int Type; int Length; } ;
struct BufferedFile {int dummy; } ;
typedef scalar_t__ qboolean ;


 scalar_t__ BigLong (int ) ;
 struct PNG_ChunkHeader* BufferedFileRead (struct BufferedFile*,int ) ;
 int BufferedFileRewind (struct BufferedFile*,int ) ;
 int BufferedFileSkip (struct BufferedFile*,scalar_t__) ;
 scalar_t__ PNG_ChunkCRC_Size ;
 int PNG_ChunkHeader_Size ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

__attribute__((used)) static qboolean FindChunk(struct BufferedFile *BF, uint32_t ChunkType)
{
 struct PNG_ChunkHeader *CH;

 uint32_t Length;
 uint32_t Type;





 if(!BF)
 {
  return(qfalse);
 }





 while(qtrue)
 {




  CH = BufferedFileRead(BF, PNG_ChunkHeader_Size);
  if(!CH)
  {
   return(qfalse);
  }






  Length = BigLong(CH->Length);
  Type = BigLong(CH->Type);





  if(Type == ChunkType)
  {




   BufferedFileRewind(BF, PNG_ChunkHeader_Size);

   break;
  }
  else
  {




   if(Length)
   {
    if(!BufferedFileSkip(BF, Length + PNG_ChunkCRC_Size))
    {
     return(qfalse);
    }
   }
  }
 }

 return(qtrue);
}
