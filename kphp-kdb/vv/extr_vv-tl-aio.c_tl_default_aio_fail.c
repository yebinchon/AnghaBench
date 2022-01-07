
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_saved_query {int dummy; } ;


 int TL_ERROR_AIO_FAIL ;
 int tl_fetch_set_error (char*,int ) ;

void tl_default_aio_fail (struct tl_saved_query *q) {
  tl_fetch_set_error ("Aio/binlog wait error", TL_ERROR_AIO_FAIL);
}
