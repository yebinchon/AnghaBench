
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct apei_exec_context {int var2; scalar_t__ dst_base; scalar_t__ src_base; } ;
struct acpi_whea_header {int dummy; } ;


 int EBUSY ;
 int ENOMEM ;
 int __apei_exec_read_register (struct acpi_whea_header*,scalar_t__*) ;
 scalar_t__ in_interrupt () ;
 void* ioremap (scalar_t__,int ) ;
 int iounmap (void*) ;
 int memmove (void*,void*,int ) ;
 int pr_warn (char*) ;

__attribute__((used)) static int erst_exec_move_data(struct apei_exec_context *ctx,
          struct acpi_whea_header *entry)
{
 int rc;
 u64 offset;
 void *src, *dst;


 if (in_interrupt()) {
  pr_warn("MOVE_DATA can not be used in interrupt context.\n");
  return -EBUSY;
 }

 rc = __apei_exec_read_register(entry, &offset);
 if (rc)
  return rc;

 src = ioremap(ctx->src_base + offset, ctx->var2);
 if (!src)
  return -ENOMEM;
 dst = ioremap(ctx->dst_base + offset, ctx->var2);
 if (!dst) {
  iounmap(src);
  return -ENOMEM;
 }

 memmove(dst, src, ctx->var2);

 iounmap(src);
 iounmap(dst);

 return 0;
}
