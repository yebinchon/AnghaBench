
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lev_dns_delete_records {int name; } ;
struct TYPE_4__ {scalar_t__ qtype; scalar_t__ name_len; int name; } ;
typedef TYPE_1__ record_t ;


 scalar_t__ LEV_DNS_DELETE_RECORDS ;
 struct lev_dns_delete_records* alloc_log_event (scalar_t__,int ,scalar_t__) ;
 int cmp_str (int ,scalar_t__,int ,scalar_t__) ;
 int compute_uncommitted_log_bytes () ;
 int delete_logevents ;
 int flush_binlog_forced (int ) ;
 TYPE_1__* last_deleted_record ;
 int memcpy (int ,int ,scalar_t__) ;
 int try_change_zone () ;
 int vkprintf (int,char*,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void record_delete (record_t *r) {
  if (last_deleted_record && !cmp_str (last_deleted_record->name, last_deleted_record->name_len, r->name, r->name_len) && last_deleted_record->qtype == r->qtype) {
    return;
  }

  try_change_zone ();
  vkprintf (3, "Delete records for name '%.*s' of type %d.\n", r->name_len, r->name, r->qtype);
  struct lev_dns_delete_records *E = alloc_log_event (LEV_DNS_DELETE_RECORDS + r->name_len, sizeof (struct lev_dns_delete_records) + r->name_len, r->qtype);
  memcpy (E->name, r->name, r->name_len);
  last_deleted_record = r;
  if (compute_uncommitted_log_bytes () > (1 << 23)) {
    flush_binlog_forced (0);
  }
  delete_logevents++;
}
