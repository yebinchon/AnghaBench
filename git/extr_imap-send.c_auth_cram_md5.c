
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct imap_store {TYPE_2__* imap; } ;
struct imap_cmd {int dummy; } ;
struct TYPE_6__ {int pass; int user; } ;
struct TYPE_4__ {int sock; } ;
struct TYPE_5__ {TYPE_1__ buf; } ;


 char* cram (char const*,int ,int ) ;
 int error (char*) ;
 int free (char*) ;
 TYPE_3__ server ;
 int socket_write (int *,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int auth_cram_md5(struct imap_store *ctx, struct imap_cmd *cmd, const char *prompt)
{
 int ret;
 char *response;

 response = cram(prompt, server.user, server.pass);

 ret = socket_write(&ctx->imap->buf.sock, response, strlen(response));
 if (ret != strlen(response))
  return error("IMAP error: sending response failed");

 free(response);

 return 0;
}
