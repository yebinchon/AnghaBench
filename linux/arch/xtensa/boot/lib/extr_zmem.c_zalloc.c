
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* avail_ram ;
 void* end_avail ;
 int exit () ;

void *zalloc(unsigned size)
{
        void *p = avail_ram;

        size = (size + 7) & -8;
        avail_ram += size;
        if (avail_ram > end_avail) {


                exit ();
        }
        return p;
}
