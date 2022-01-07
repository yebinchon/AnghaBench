
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct apei_exec_context {int dummy; } ;
struct TYPE_3__ {int entries; } ;


 int ARRAY_SIZE (int ) ;
 int ERST_TAB_ENTRY (TYPE_1__*) ;
 int apei_exec_ctx_init (struct apei_exec_context*,int ,int ,int ,int ) ;
 int erst_ins_type ;
 TYPE_1__* erst_tab ;

__attribute__((used)) static inline void erst_exec_ctx_init(struct apei_exec_context *ctx)
{
 apei_exec_ctx_init(ctx, erst_ins_type, ARRAY_SIZE(erst_ins_type),
      ERST_TAB_ENTRY(erst_tab), erst_tab->entries);
}
