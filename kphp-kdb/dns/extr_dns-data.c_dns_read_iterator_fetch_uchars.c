
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avail_in; int rptr; } ;
typedef TYPE_1__ dns_read_iterator_t ;


 int memcpy (unsigned char*,int,int) ;

__attribute__((used)) static int dns_read_iterator_fetch_uchars (dns_read_iterator_t *B, int len, unsigned char *res) {
  if (B->avail_in < len) {
    return -1;
  }
  memcpy (res, B->rptr, len);
  B->avail_in -= len;
  B->rptr += len;
  return 0;
}
