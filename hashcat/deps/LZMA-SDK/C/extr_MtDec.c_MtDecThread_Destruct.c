
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMtDecThread ;


 int MtDecThread_CloseThread (int *) ;
 int MtDecThread_FreeInBufs (int *) ;

__attribute__((used)) static void MtDecThread_Destruct(CMtDecThread *t)
{
  MtDecThread_CloseThread(t);
  MtDecThread_FreeInBufs(t);
}
