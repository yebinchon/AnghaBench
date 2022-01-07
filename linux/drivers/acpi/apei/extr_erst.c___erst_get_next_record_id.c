
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct apei_exec_context {int dummy; } ;


 int ACPI_ERST_GET_RECORD_ID ;
 int apei_exec_ctx_get_output (struct apei_exec_context*) ;
 int apei_exec_run (struct apei_exec_context*,int ) ;
 int erst_exec_ctx_init (struct apei_exec_context*) ;

__attribute__((used)) static int __erst_get_next_record_id(u64 *record_id)
{
 struct apei_exec_context ctx;
 int rc;

 erst_exec_ctx_init(&ctx);
 rc = apei_exec_run(&ctx, ACPI_ERST_GET_RECORD_ID);
 if (rc)
  return rc;
 *record_id = apei_exec_ctx_get_output(&ctx);

 return 0;
}
