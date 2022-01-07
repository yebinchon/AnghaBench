
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vfree (void*) ;

__attribute__((used)) static void devcd_freev(void *data)
{
 vfree(data);
}
