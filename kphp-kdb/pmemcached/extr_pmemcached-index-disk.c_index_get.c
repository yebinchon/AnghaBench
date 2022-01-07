
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metafile {scalar_t__ data; TYPE_1__* header; scalar_t__ aio; } ;
struct index_entry {int key_len; int data; } ;
struct TYPE_2__ {int nrecords; int key_len; int key; } ;


 int debug_dump_key (int ,int ) ;
 int fprintf (int ,char*,...) ;
 struct index_entry index_entry_not_found ;
 int load_metafile (int) ;
 struct index_entry* metafile_get_entry (int,int) ;
 int metafile_number ;
 struct metafile* metafiles ;
 int metafiles_cache_miss ;
 int metafiles_cache_ok ;
 scalar_t__ mystrcmp (char const*,int,int ,int ) ;
 int renew_use (int) ;
 int stderr ;
 int verbosity ;

struct index_entry* index_get (const char *key, int key_len) {
  int l = -1;
  int r = metafile_number;
  while (r-l > 1) {
    int x = (r+l)>>1;
    if (mystrcmp(key, key_len, metafiles[x].header->key, metafiles[x].header->key_len) < 0) {
      r = x;
    } else {
      l = x;
    }
  }
  if (l < 0) {
    if (verbosity>=4) { fprintf (stderr, "not found[1]\n"); }
    return &index_entry_not_found;
  }
  if (verbosity>=4) {
    fprintf (stderr, "(l,r) = (%d,%d)\n", l, r);
  }
  if (metafiles[l].data == 0 || metafiles[l].aio) {
    load_metafile (l);
   if (metafiles[l].data == 0 || metafiles[l].aio) {
      metafiles_cache_miss ++;
     return 0;
   }
  }
  metafiles_cache_ok ++;
  renew_use (l);
  int metafile = l;
  struct metafile* meta = &metafiles[l];

  l = -1;
  r = meta->header->nrecords;
  while (r-l > 1) {
    int x = (r+l)>>1;
    if (mystrcmp(key, key_len, metafile_get_entry (metafile, x)->data, metafile_get_entry (metafile, x)->key_len) < 0) {
      r = x;
    } else {
      l = x;
    }
  }
  if (verbosity>=4) {
    fprintf (stderr, "(l,r) = (%d,%d)\n", l, r);
  }

  if (l < 0) {
    if (verbosity>=4) { fprintf (stderr, "not found[2]\n"); }
    return &index_entry_not_found;
  }
  struct index_entry *E = metafile_get_entry (metafile, l);
  if (verbosity >= 4) {
    fprintf (stderr, "metafile_get_entry (%d, %d)->key = ", metafile, l);
    debug_dump_key (E->data, E->key_len);
  }
  if (mystrcmp(key, key_len, E->data, E->key_len) == 0) {
    if (verbosity>=4) {
      fprintf (stderr, "Found. l=%d\n", l);
    }
    return metafile_get_entry (metafile, l);
  }

  if (verbosity>=4) { fprintf (stderr, "not found[3]\n"); }
  return &index_entry_not_found;
}
