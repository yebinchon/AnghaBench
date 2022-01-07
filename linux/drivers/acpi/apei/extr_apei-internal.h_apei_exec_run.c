
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct apei_exec_context {int dummy; } ;


 int __apei_exec_run (struct apei_exec_context*,int ,int ) ;

__attribute__((used)) static inline int apei_exec_run(struct apei_exec_context *ctx, u8 action)
{
 return __apei_exec_run(ctx, action, 0);
}
