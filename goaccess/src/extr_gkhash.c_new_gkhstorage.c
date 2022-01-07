
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GKHashStorage ;


 int * xcalloc (int ,int) ;

__attribute__((used)) static GKHashStorage *
new_gkhstorage (uint32_t size)
{
  GKHashStorage *storage = xcalloc (size, sizeof (GKHashStorage));
  return storage;
}
