
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pid; } ;
typedef TYPE_1__ pidfile_data_t ;
struct TYPE_7__ {TYPE_1__* pd; } ;
typedef TYPE_2__ pidfile_ctx_t ;
struct TYPE_8__ {TYPE_2__* pidfile_ctx; } ;
typedef TYPE_3__ hashcat_ctx_t ;


 int GetCurrentProcessId () ;
 int check_running_process (TYPE_3__*) ;
 int getpid () ;
 scalar_t__ hcmalloc (int) ;

__attribute__((used)) static int init_pidfile (hashcat_ctx_t *hashcat_ctx)
{
  pidfile_ctx_t *pidfile_ctx = hashcat_ctx->pidfile_ctx;

  pidfile_data_t *pd = (pidfile_data_t *) hcmalloc (sizeof (pidfile_data_t));

  pidfile_ctx->pd = pd;

  const int rc = check_running_process (hashcat_ctx);

  if (rc == -1) return -1;




  pd->pid = getpid ();


  return 0;
}
