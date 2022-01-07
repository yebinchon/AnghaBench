
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bts_phys {unsigned long offset; scalar_t__ size; int page; } ;


 int memset (scalar_t__,int ,scalar_t__) ;
 scalar_t__ page_address (int ) ;

__attribute__((used)) static void bts_buffer_pad_out(struct bts_phys *phys, unsigned long head)
{
 unsigned long index = head - phys->offset;

 memset(page_address(phys->page) + index, 0, phys->size - index);
}
