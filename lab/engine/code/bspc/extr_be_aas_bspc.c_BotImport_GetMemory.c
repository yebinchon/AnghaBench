
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* GetMemory (int) ;

void *BotImport_GetMemory(int size)
{
 return GetMemory(size);
}
