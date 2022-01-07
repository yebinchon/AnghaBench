
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_sockaddr_context {int orig_dir; } ;


 scalar_t__ chdir (int ) ;
 int die (char*) ;
 int free (int ) ;

__attribute__((used)) static void unix_sockaddr_cleanup(struct unix_sockaddr_context *ctx)
{
 if (!ctx->orig_dir)
  return;





 if (chdir(ctx->orig_dir) < 0)
  die("unable to restore original working directory");
 free(ctx->orig_dir);
}
