
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int use_dio; int lo_backing_file; } ;


 int __loop_update_dio (struct loop_device*,int) ;
 int io_is_direct (int ) ;

__attribute__((used)) static inline void loop_update_dio(struct loop_device *lo)
{
 __loop_update_dio(lo, io_is_direct(lo->lo_backing_file) |
   lo->use_dio);
}
