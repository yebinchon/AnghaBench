
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;





 long BIO_get_shutdown (int *) ;
 int BIO_set_shutdown (int *,int) ;

__attribute__((used)) static long ctrl_bio(BIO *b, int cmd, long num, void *ptr)
{
    switch (cmd) {
    case 129:
        return BIO_get_shutdown(b);
    case 128:
        BIO_set_shutdown(b, (int)num);
        return 1;
    case 130:
        return 1;
    default:
        return 0;
    }
}
