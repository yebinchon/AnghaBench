
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enabled; scalar_t__ induction_dictionaries_cnt; int induction_dictionaries; int root_directory; } ;
typedef TYPE_1__ induct_ctx_t ;
struct TYPE_5__ {TYPE_1__* induct_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 scalar_t__ count_dictionaries (int ) ;
 int qsort (int ,size_t,int,int ) ;
 int scan_directory (int ) ;
 int sort_by_mtime ;

void induct_ctx_scan (hashcat_ctx_t *hashcat_ctx)
{
  induct_ctx_t *induct_ctx = hashcat_ctx->induct_ctx;

  if (induct_ctx->enabled == 0) return;

  induct_ctx->induction_dictionaries = scan_directory (induct_ctx->root_directory);

  induct_ctx->induction_dictionaries_cnt = count_dictionaries (induct_ctx->induction_dictionaries);

  qsort (induct_ctx->induction_dictionaries, (size_t) induct_ctx->induction_dictionaries_cnt, sizeof (char *), sort_by_mtime);
}
