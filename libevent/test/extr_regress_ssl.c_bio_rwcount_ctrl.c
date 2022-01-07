
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwcount {long fd; } ;
typedef int BIO ;
 struct rwcount* BIO_get_data (int *) ;
 long BIO_get_shutdown (int *) ;
 int BIO_set_shutdown (int *,int) ;

__attribute__((used)) static long
bio_rwcount_ctrl(BIO *b, int cmd, long num, void *ptr)
{
 struct rwcount *rw = BIO_get_data(b);
 long ret = 0;
 switch (cmd) {
 case 128:
  ret = rw->fd;
  break;
 case 132:
  ret = BIO_get_shutdown(b);
  break;
 case 130:
  BIO_set_shutdown(b, (int)num);
  break;
 case 131:
  ret = 0;
  break;
 case 129:
  ret = 0;
  break;
 case 134:
 case 133:
  ret = 1;
  break;
 }
 return ret;
}
