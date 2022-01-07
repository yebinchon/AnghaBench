
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct backtrace_location {char* filename; int lineno; scalar_t__ method_id; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
struct TYPE_2__ {scalar_t__ flags; } ;
typedef int FILE ;


 TYPE_1__* RDATA (int ) ;
 int bt_type ;
 int fprintf (int *,char*,...) ;
 scalar_t__ mrb_data_check_get_ptr (int *,int ,int *) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 char* mrb_sym2name (int *,scalar_t__) ;
 scalar_t__ packed_bt_len (struct backtrace_location*,int) ;
 int * stderr ;

__attribute__((used)) static void
print_packed_backtrace(mrb_state *mrb, mrb_value packed)
{
  FILE *stream = stderr;
  struct backtrace_location *bt;
  int n, i;
  int ai = mrb_gc_arena_save(mrb);

  bt = (struct backtrace_location*)mrb_data_check_get_ptr(mrb, packed, &bt_type);
  if (bt == ((void*)0)) return;
  n = (mrb_int)RDATA(packed)->flags;

  if (packed_bt_len(bt, n) == 0) return;
  fprintf(stream, "trace (most recent call last):\n");
  for (i = 0; i<n; i++) {
    struct backtrace_location *entry = &bt[n-i-1];
    if (entry->filename == ((void*)0)) continue;
    fprintf(stream, "\t[%d] %s:%d", i, entry->filename, entry->lineno);
    if (entry->method_id != 0) {
      const char *method_name;

      method_name = mrb_sym2name(mrb, entry->method_id);
      fprintf(stream, ":in %s", method_name);
      mrb_gc_arena_restore(mrb, ai);
    }
    fprintf(stream, "\n");
  }
}
