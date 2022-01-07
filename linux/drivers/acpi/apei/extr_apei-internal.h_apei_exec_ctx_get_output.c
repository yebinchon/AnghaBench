
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct apei_exec_context {int value; } ;



__attribute__((used)) static inline u64 apei_exec_ctx_get_output(struct apei_exec_context *ctx)
{
 return ctx->value;
}
