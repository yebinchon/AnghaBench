
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sector_t ;


 scalar_t__ BFQQ_CLOSE_THR ;
 scalar_t__ abs (scalar_t__) ;
 scalar_t__ bfq_io_struct_pos (void*,int) ;

__attribute__((used)) static int bfq_rq_close_to_sector(void *io_struct, bool request,
      sector_t sector)
{
 return abs(bfq_io_struct_pos(io_struct, request) - sector) <=
        BFQQ_CLOSE_THR;
}
