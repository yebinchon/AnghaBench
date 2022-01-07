
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct apei_exec_context {int dummy; } ;
struct TYPE_3__ {int entries; } ;


 int ARRAY_SIZE (int ) ;
 int EINJ_TAB_ENTRY (TYPE_1__*) ;
 int apei_exec_ctx_init (struct apei_exec_context*,int ,int ,int ,int ) ;
 int einj_ins_type ;
 TYPE_1__* einj_tab ;

__attribute__((used)) static void einj_exec_ctx_init(struct apei_exec_context *ctx)
{
 apei_exec_ctx_init(ctx, einj_ins_type, ARRAY_SIZE(einj_ins_type),
      EINJ_TAB_ENTRY(einj_tab), einj_tab->entries);
}
