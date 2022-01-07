
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_3__ {int hash; } ;
struct TYPE_4__ {int sd_size; } ;
struct cache_entry {int ce_flags; int ce_mode; TYPE_1__ oid; TYPE_2__ ce_stat_data; } ;


 int BUG (char*,int) ;
 int CE_REMOVE ;
 int DATA_CHANGED ;
 int MODE_CHANGED ;


 int S_IFMT ;

 int S_ISDIR (int) ;
 int S_ISLNK (int) ;
 int S_ISREG (int) ;
 int TYPE_CHANGED ;
 int ce_compare_gitlink (struct cache_entry const*) ;
 int has_symlinks ;
 int is_empty_blob_sha1 (int ) ;
 unsigned int match_stat_data (TYPE_2__*,struct stat*) ;
 int trust_executable_bit ;

__attribute__((used)) static int ce_match_stat_basic(const struct cache_entry *ce, struct stat *st)
{
 unsigned int changed = 0;

 if (ce->ce_flags & CE_REMOVE)
  return MODE_CHANGED | DATA_CHANGED | TYPE_CHANGED;

 switch (ce->ce_mode & S_IFMT) {
 case 128:
  changed |= !S_ISREG(st->st_mode) ? TYPE_CHANGED : 0;



  if (trust_executable_bit &&
      (0100 & (ce->ce_mode ^ st->st_mode)))
   changed |= MODE_CHANGED;
  break;
 case 129:
  if (!S_ISLNK(st->st_mode) &&
      (has_symlinks || !S_ISREG(st->st_mode)))
   changed |= TYPE_CHANGED;
  break;
 case 130:

  if (!S_ISDIR(st->st_mode))
   changed |= TYPE_CHANGED;
  else if (ce_compare_gitlink(ce))
   changed |= DATA_CHANGED;
  return changed;
 default:
  BUG("unsupported ce_mode: %o", ce->ce_mode);
 }

 changed |= match_stat_data(&ce->ce_stat_data, st);


 if (!ce->ce_stat_data.sd_size) {
  if (!is_empty_blob_sha1(ce->oid.hash))
   changed |= DATA_CHANGED;
 }

 return changed;
}
