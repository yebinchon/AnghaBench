
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry const** cache; } ;
typedef struct cache_entry {char* name; int ce_flags; } const cache_entry ;


 int CE_REMOVE ;
 size_t ce_namelen (struct cache_entry const*) ;
 int ce_stage (struct cache_entry const*) ;
 int index_name_stage_pos (struct index_state*,char const*,size_t,int) ;
 scalar_t__ memcmp (char*,char const*,size_t) ;
 int remove_index_entry_at (struct index_state*,int) ;
 int strcmp_offset (char const*,char*,size_t*) ;

__attribute__((used)) static int has_dir_name(struct index_state *istate,
   const struct cache_entry *ce, int pos, int ok_to_replace)
{
 int retval = 0;
 int stage = ce_stage(ce);
 const char *name = ce->name;
 const char *slash = name + ce_namelen(ce);
 size_t len_eq_last;
 int cmp_last = 0;
 if (istate->cache_nr > 0) {
  cmp_last = strcmp_offset(name,
   istate->cache[istate->cache_nr - 1]->name,
   &len_eq_last);
  if (cmp_last > 0) {
   if (len_eq_last == 0) {





    return retval;
   } else {






   }
  } else if (cmp_last == 0) {






  }
 }

 for (;;) {
  size_t len;

  for (;;) {
   if (*--slash == '/')
    break;
   if (slash <= ce->name)
    return retval;
  }
  len = slash - name;

  if (cmp_last > 0) {
   if (len + 1 <= len_eq_last) {
    return retval;
   }

   if (len > len_eq_last) {
    return retval;
   }

   if (istate->cache_nr > 0 &&
    ce_namelen(istate->cache[istate->cache_nr - 1]) > len) {
    return retval;
   }
  }

  pos = index_name_stage_pos(istate, name, len, stage);
  if (pos >= 0) {
   if (!(istate->cache[pos]->ce_flags & CE_REMOVE)) {
    retval = -1;
    if (!ok_to_replace)
     break;
    remove_index_entry_at(istate, pos);
    continue;
   }
  }
  else
   pos = -pos-1;






  while (pos < istate->cache_nr) {
   struct cache_entry *p = istate->cache[pos];
   if ((ce_namelen(p) <= len) ||
       (p->name[len] != '/') ||
       memcmp(p->name, name, len))
    break;
   if (ce_stage(p) == stage && !(p->ce_flags & CE_REMOVE))






    return retval;
   pos++;
  }
 }
 return retval;
}
