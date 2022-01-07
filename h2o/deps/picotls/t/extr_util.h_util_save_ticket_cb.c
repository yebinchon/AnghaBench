
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_util_save_ticket_t {char* fn; } ;
typedef int ptls_t ;
typedef int ptls_save_ticket_t ;
struct TYPE_3__ {int len; int base; } ;
typedef TYPE_1__ ptls_iovec_t ;
typedef int FILE ;


 int PTLS_ERROR_LIBRARY ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,char*) ;
 int fwrite (int ,int,int ,int *) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static int util_save_ticket_cb(ptls_save_ticket_t *_self, ptls_t *tls, ptls_iovec_t src)
{
    struct st_util_save_ticket_t *self = (void *)_self;
    FILE *fp;

    if ((fp = fopen(self->fn, "wb")) == ((void*)0)) {
        fprintf(stderr, "failed to open file:%s:%s\n", self->fn, strerror(errno));
        return PTLS_ERROR_LIBRARY;
    }
    fwrite(src.base, 1, src.len, fp);
    fclose(fp);

    return 0;
}
