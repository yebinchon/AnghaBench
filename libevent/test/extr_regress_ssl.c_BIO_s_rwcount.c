
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int BIO_TYPE_LIBEVENT_RWCOUNT ;
 int * BIO_meth_new (int ,char*) ;
 int BIO_meth_set_create (int *,int ) ;
 int BIO_meth_set_ctrl (int *,int ) ;
 int BIO_meth_set_destroy (int *,int ) ;
 int BIO_meth_set_puts (int *,int ) ;
 int BIO_meth_set_read (int *,int ) ;
 int BIO_meth_set_write (int *,int ) ;
 int bio_rwcount_ctrl ;
 int bio_rwcount_free ;
 int bio_rwcount_new ;
 int bio_rwcount_puts ;
 int bio_rwcount_read ;
 int bio_rwcount_write ;
 int * methods_rwcount ;

__attribute__((used)) static BIO_METHOD *
BIO_s_rwcount(void)
{
 if (methods_rwcount == ((void*)0)) {
  methods_rwcount = BIO_meth_new(BIO_TYPE_LIBEVENT_RWCOUNT, "rwcount");
  if (methods_rwcount == ((void*)0))
   return ((void*)0);
  BIO_meth_set_write(methods_rwcount, bio_rwcount_write);
  BIO_meth_set_read(methods_rwcount, bio_rwcount_read);
  BIO_meth_set_puts(methods_rwcount, bio_rwcount_puts);
  BIO_meth_set_ctrl(methods_rwcount, bio_rwcount_ctrl);
  BIO_meth_set_create(methods_rwcount, bio_rwcount_new);
  BIO_meth_set_destroy(methods_rwcount, bio_rwcount_free);
 }
 return methods_rwcount;
}
