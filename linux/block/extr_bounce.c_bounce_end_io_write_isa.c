
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int bounce_end_io (struct bio*,int *) ;
 int isa_page_pool ;

__attribute__((used)) static void bounce_end_io_write_isa(struct bio *bio)
{

 bounce_end_io(bio, &isa_page_pool);
}
