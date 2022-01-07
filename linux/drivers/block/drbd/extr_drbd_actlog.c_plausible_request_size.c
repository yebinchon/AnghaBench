
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRBD_MAX_BATCH_BIO_SIZE ;
 scalar_t__ IS_ALIGNED (int,int) ;

__attribute__((used)) static bool plausible_request_size(int size)
{
 return size > 0
  && size <= DRBD_MAX_BATCH_BIO_SIZE
  && IS_ALIGNED(size, 512);
}
