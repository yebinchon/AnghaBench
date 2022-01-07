
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwcount {int write; int fd; } ;
typedef int ev_ssize_t ;
typedef int BIO ;


 struct rwcount* BIO_get_data (int *) ;
 int BIO_set_retry_write (int *) ;
 scalar_t__ EVUTIL_ERR_RW_RETRIABLE (int ) ;
 int EVUTIL_SOCKET_ERROR () ;
 int send (int ,char const*,int,int ) ;

__attribute__((used)) static int
bio_rwcount_write(BIO *b, const char *in, int inlen)
{
 struct rwcount *rw = BIO_get_data(b);
 ev_ssize_t ret = send(rw->fd, in, inlen, 0);
 ++rw->write;
 if (ret == -1 && EVUTIL_ERR_RW_RETRIABLE(EVUTIL_SOCKET_ERROR())) {
  BIO_set_retry_write(b);
 }
 return ret;
}
