
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ghes_estatus_node {int llnode; int generic; struct ghes* ghes; } ;
struct ghes {int generic; } ;
struct acpi_hest_generic_status {int error_severity; } ;
typedef enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;


 int CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG ;
 int ENOENT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct acpi_hest_generic_status* GHES_ESTATUS_FROM_NODE (struct ghes_estatus_node*) ;
 int GHES_ESTATUS_NODE_LEN (int ) ;
 int GHES_SEV_PANIC ;
 int IS_ENABLED (int ) ;
 int __ghes_check_estatus (struct ghes*,struct acpi_hest_generic_status*) ;
 int __ghes_panic (struct ghes*,struct acpi_hest_generic_status*,int ,int) ;
 int __ghes_peek_estatus (struct ghes*,struct acpi_hest_generic_status*,int *,int) ;
 scalar_t__ __ghes_read_estatus (struct acpi_hest_generic_status*,int ,int,int ) ;
 int cper_estatus_len (struct acpi_hest_generic_status*) ;
 scalar_t__ gen_pool_alloc (int ,int ) ;
 int gen_pool_free (int ,unsigned long,int ) ;
 int ghes_clear_estatus (struct ghes*,struct acpi_hest_generic_status*,int ,int) ;
 scalar_t__ ghes_estatus_cached (struct acpi_hest_generic_status*) ;
 int ghes_estatus_llist ;
 int ghes_estatus_pool ;
 int ghes_print_queued_estatus () ;
 int ghes_severity (int ) ;
 int llist_add (int *,int *) ;

__attribute__((used)) static int ghes_in_nmi_queue_one_entry(struct ghes *ghes,
           enum fixed_addresses fixmap_idx)
{
 struct acpi_hest_generic_status *estatus, tmp_header;
 struct ghes_estatus_node *estatus_node;
 u32 len, node_len;
 u64 buf_paddr;
 int sev, rc;

 if (!IS_ENABLED(CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG))
  return -EOPNOTSUPP;

 rc = __ghes_peek_estatus(ghes, &tmp_header, &buf_paddr, fixmap_idx);
 if (rc) {
  ghes_clear_estatus(ghes, &tmp_header, buf_paddr, fixmap_idx);
  return rc;
 }

 rc = __ghes_check_estatus(ghes, &tmp_header);
 if (rc) {
  ghes_clear_estatus(ghes, &tmp_header, buf_paddr, fixmap_idx);
  return rc;
 }

 len = cper_estatus_len(&tmp_header);
 node_len = GHES_ESTATUS_NODE_LEN(len);
 estatus_node = (void *)gen_pool_alloc(ghes_estatus_pool, node_len);
 if (!estatus_node)
  return -ENOMEM;

 estatus_node->ghes = ghes;
 estatus_node->generic = ghes->generic;
 estatus = GHES_ESTATUS_FROM_NODE(estatus_node);

 if (__ghes_read_estatus(estatus, buf_paddr, fixmap_idx, len)) {
  ghes_clear_estatus(ghes, estatus, buf_paddr, fixmap_idx);
  rc = -ENOENT;
  goto no_work;
 }

 sev = ghes_severity(estatus->error_severity);
 if (sev >= GHES_SEV_PANIC) {
  ghes_print_queued_estatus();
  __ghes_panic(ghes, estatus, buf_paddr, fixmap_idx);
 }

 ghes_clear_estatus(ghes, &tmp_header, buf_paddr, fixmap_idx);


 if (ghes_estatus_cached(estatus))
  goto no_work;

 llist_add(&estatus_node->llnode, &ghes_estatus_llist);

 return rc;

no_work:
 gen_pool_free(ghes_estatus_pool, (unsigned long)estatus_node,
        node_len);

 return rc;
}
