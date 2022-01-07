
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cwd; int argv; int argc; int version; } ;
typedef TYPE_1__ restore_data_t ;
struct TYPE_7__ {int argv; int argc; TYPE_1__* rd; } ;
typedef TYPE_2__ restore_ctx_t ;
struct TYPE_8__ {TYPE_2__* restore_ctx; } ;
typedef TYPE_3__ hashcat_ctx_t ;


 int RESTORE_VERSION_CUR ;
 int errno ;
 int event_log_error (TYPE_3__*,char*,int ) ;
 int * getcwd (int ,int) ;
 scalar_t__ hcmalloc (int) ;
 int strerror (int ) ;

__attribute__((used)) static int init_restore (hashcat_ctx_t *hashcat_ctx)
{
  restore_ctx_t *restore_ctx = hashcat_ctx->restore_ctx;

  restore_data_t *rd = (restore_data_t *) hcmalloc (sizeof (restore_data_t));

  restore_ctx->rd = rd;

  rd->version = RESTORE_VERSION_CUR;

  rd->argc = restore_ctx->argc;
  rd->argv = restore_ctx->argv;

  if (getcwd (rd->cwd, 255) == ((void*)0))
  {
    event_log_error (hashcat_ctx, "getcwd(): %s", strerror (errno));

    return -1;
  }

  return 0;
}
