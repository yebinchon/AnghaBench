
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zram_remove (void*) ;

__attribute__((used)) static int zram_remove_cb(int id, void *ptr, void *data)
{
 zram_remove(ptr);
 return 0;
}
