
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imap_store {int dummy; } ;


 int free (struct imap_store*) ;
 int imap_close_server (struct imap_store*) ;

__attribute__((used)) static void imap_close_store(struct imap_store *ctx)
{
 imap_close_server(ctx);
 free(ctx);
}
