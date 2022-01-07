
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tss_struct {int io_bitmap; } ;
struct thread_struct {int io_bitmap_max; int io_bitmap_ptr; } ;


 unsigned long _TIF_IO_BITMAP ;
 int cpu_tss_rw ;
 int max (int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int,int ) ;
 int refresh_tss_limit () ;
 struct tss_struct* this_cpu_ptr (int *) ;

__attribute__((used)) static inline void switch_to_bitmap(struct thread_struct *prev,
        struct thread_struct *next,
        unsigned long tifp, unsigned long tifn)
{
 struct tss_struct *tss = this_cpu_ptr(&cpu_tss_rw);

 if (tifn & _TIF_IO_BITMAP) {




  memcpy(tss->io_bitmap, next->io_bitmap_ptr,
         max(prev->io_bitmap_max, next->io_bitmap_max));




  refresh_tss_limit();
 } else if (tifp & _TIF_IO_BITMAP) {



  memset(tss->io_bitmap, 0xff, prev->io_bitmap_max);
 }
}
