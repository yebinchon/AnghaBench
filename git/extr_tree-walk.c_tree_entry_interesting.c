
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct pathspec {int magic; } ;
struct name_entry {int mode; } ;
struct index_state {int dummy; } ;
typedef enum interesting { ____Placeholder_interesting } interesting ;


 int PATHSPEC_EXCLUDE ;
 scalar_t__ S_ISDIR (int ) ;
 int all_entries_interesting ;
 int all_entries_not_interesting ;
 int do_match (struct index_state*,struct name_entry const*,struct strbuf*,int,struct pathspec const*,int) ;
 int entry_interesting ;
 int entry_not_interesting ;

enum interesting tree_entry_interesting(struct index_state *istate,
     const struct name_entry *entry,
     struct strbuf *base, int base_offset,
     const struct pathspec *ps)
{
 enum interesting positive, negative;
 positive = do_match(istate, entry, base, base_offset, ps, 0);
 if (!(ps->magic & PATHSPEC_EXCLUDE) ||
     positive <= entry_not_interesting)
  return positive;

 negative = do_match(istate, entry, base, base_offset, ps, 1);


 if (positive == all_entries_interesting &&
     negative == entry_not_interesting)
  return entry_interesting;


 if (negative <= entry_not_interesting)
  return positive;


 if (S_ISDIR(entry->mode) &&
     positive >= entry_interesting &&
     negative == entry_interesting)
  return entry_interesting;

 if ((positive == entry_interesting &&
      negative >= entry_interesting) ||
     (positive == all_entries_interesting &&
      negative == entry_interesting))
  return entry_not_interesting;

 return all_entries_not_interesting;
}
