
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int __bounce_end_io_read (struct bio*,int *) ;
 int page_pool ;

__attribute__((used)) static void bounce_end_io_read(struct bio *bio)
{
 __bounce_end_io_read(bio, &page_pool);
}
