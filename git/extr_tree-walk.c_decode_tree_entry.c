
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hash; } ;
struct TYPE_5__ {char const* path; unsigned int pathlen; TYPE_1__ oid; int mode; } ;
struct tree_desc {TYPE_2__ entry; } ;
struct strbuf {int dummy; } ;
struct TYPE_6__ {unsigned int rawsz; } ;


 int _ (char*) ;
 int canon_mode (unsigned int) ;
 char* get_mode (char const*,unsigned int*) ;
 int hashcpy (int ,unsigned char const*) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strlen (char const*) ;
 TYPE_3__* the_hash_algo ;

__attribute__((used)) static int decode_tree_entry(struct tree_desc *desc, const char *buf, unsigned long size, struct strbuf *err)
{
 const char *path;
 unsigned int mode, len;
 const unsigned hashsz = the_hash_algo->rawsz;

 if (size < hashsz + 3 || buf[size - (hashsz + 1)]) {
  strbuf_addstr(err, _("too-short tree object"));
  return -1;
 }

 path = get_mode(buf, &mode);
 if (!path) {
  strbuf_addstr(err, _("malformed mode in tree entry"));
  return -1;
 }
 if (!*path) {
  strbuf_addstr(err, _("empty filename in tree entry"));
  return -1;
 }
 len = strlen(path) + 1;


 desc->entry.path = path;
 desc->entry.mode = canon_mode(mode);
 desc->entry.pathlen = len - 1;
 hashcpy(desc->entry.oid.hash, (const unsigned char *)path + len);

 return 0;
}
