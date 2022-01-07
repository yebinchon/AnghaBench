
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GTCStorage ;


 int * xcalloc (int ,int) ;

__attribute__((used)) static GTCStorage *
new_tcstorage (uint32_t size)
{
  GTCStorage *storage = xcalloc (size, sizeof (GTCStorage));
  return storage;
}
