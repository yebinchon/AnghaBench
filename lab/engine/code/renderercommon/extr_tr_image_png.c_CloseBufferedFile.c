
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct BufferedFile {scalar_t__ Buffer; } ;
struct TYPE_2__ {int (* Free ) (struct BufferedFile*) ;int (* FS_FreeFile ) (scalar_t__) ;} ;


 TYPE_1__ ri ;
 int stub1 (scalar_t__) ;
 int stub2 (struct BufferedFile*) ;

__attribute__((used)) static void CloseBufferedFile(struct BufferedFile *BF)
{
 if(BF)
 {
  if(BF->Buffer)
  {
   ri.FS_FreeFile(BF->Buffer);
  }

  ri.Free(BF);
 }
}
