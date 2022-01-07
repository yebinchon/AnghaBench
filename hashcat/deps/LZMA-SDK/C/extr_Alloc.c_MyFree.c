
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRINT_FREE (char*,int ,void*) ;
 int free (void*) ;
 int g_allocCount ;

void MyFree(void *address)
{
  PRINT_FREE("Free    ", g_allocCount, address);

  free(address);
}
