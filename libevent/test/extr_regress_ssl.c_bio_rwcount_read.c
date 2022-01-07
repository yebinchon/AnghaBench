
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwcount {int read; int fd; } ;
typedef int ev_ssize_t ;
typedef int BIO ;


 struct rwcount* BIO_get_data (int *) ;
 int BIO_set_retry_read (int *) ;
 scalar_t__ EVUTIL_ERR_RW_RETRIABLE (int ) ;
 int EVUTIL_SOCKET_ERROR () ;
 int recv (int ,char*,int,int ) ;

__attribute__((used)) static int
bio_rwcount_read(BIO *b, char *out, int outlen)
{
 struct rwcount *rw = BIO_get_data(b);
 ev_ssize_t ret = recv(rw->fd, out, outlen, 0);
 ++rw->read;
 if (ret == -1 && EVUTIL_ERR_RW_RETRIABLE(EVUTIL_SOCKET_ERROR())) {
  BIO_set_retry_read(b);
 }
 return ret;
}
