
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {int enabled; int subid; } ;
typedef TYPE_1__ logfile_ctx_t ;
struct TYPE_5__ {TYPE_1__* logfile_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int gettimeofday (struct timeval*,int *) ;
 int snprintf (int ,int,char*,int,int) ;

void logfile_generate_subid (hashcat_ctx_t *hashcat_ctx)
{
  logfile_ctx_t *logfile_ctx = hashcat_ctx->logfile_ctx;

  if (logfile_ctx->enabled == 0) return;

  struct timeval v;

  gettimeofday (&v, ((void*)0));

  snprintf (logfile_ctx->subid, 40, "SUB.%08x.%08x", (u32) v.tv_sec, (u32) v.tv_usec);
}
