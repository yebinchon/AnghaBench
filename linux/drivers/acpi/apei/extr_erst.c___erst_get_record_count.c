
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_exec_context {int dummy; } ;
typedef int ssize_t ;


 int ACPI_ERST_GET_RECORD_COUNT ;
 int apei_exec_ctx_get_output (struct apei_exec_context*) ;
 int apei_exec_run (struct apei_exec_context*,int ) ;
 int erst_exec_ctx_init (struct apei_exec_context*) ;

__attribute__((used)) static ssize_t __erst_get_record_count(void)
{
 struct apei_exec_context ctx;
 int rc;

 erst_exec_ctx_init(&ctx);
 rc = apei_exec_run(&ctx, ACPI_ERST_GET_RECORD_COUNT);
 if (rc)
  return rc;
 return apei_exec_ctx_get_output(&ctx);
}
