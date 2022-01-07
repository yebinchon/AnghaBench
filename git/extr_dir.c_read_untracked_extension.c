
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct untracked_cache {int root; int exclude_per_dir; int dir_flags; int ss_excludes_file; int ss_info_exclude; int ident; } ;
struct read_data {unsigned char const* data; unsigned char const* end; int index; void* sha1_valid; void* check_only; void* valid; int ucd; } ;
struct ondisk_untracked_cache {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {unsigned int rawsz; } ;


 int ALLOC_ARRAY (int ,int) ;
 int decode_varint (unsigned char const**) ;
 int dir_flags ;
 int ewah_each_bit (void*,int ,struct read_data*) ;
 int ewah_free (void*) ;
 void* ewah_new () ;
 int ewah_read_mmap (void*,unsigned char const*,int) ;
 int excludes_file_stat ;
 int free (int ) ;
 int free_untracked_cache (struct untracked_cache*) ;
 int get_be32 (unsigned char const*) ;
 int info_exclude_stat ;
 int load_oid_stat (int *,unsigned char const*,unsigned char const*) ;
 int ouc_offset (int ) ;
 int read_oid ;
 scalar_t__ read_one_dir (int *,struct read_data*) ;
 int read_stat ;
 int set_check_only ;
 int strbuf_add (int *,char const*,int) ;
 int strbuf_init (int *,int) ;
 scalar_t__ strlen (char const*) ;
 TYPE_1__* the_hash_algo ;
 struct untracked_cache* xcalloc (int,int) ;
 int xstrdup (char const*) ;

struct untracked_cache *read_untracked_extension(const void *data, unsigned long sz)
{
 struct untracked_cache *uc;
 struct read_data rd;
 const unsigned char *next = data, *end = (const unsigned char *)data + sz;
 const char *ident;
 int ident_len;
 ssize_t len;
 const char *exclude_per_dir;
 const unsigned hashsz = the_hash_algo->rawsz;
 const unsigned offset = sizeof(struct ondisk_untracked_cache);
 const unsigned exclude_per_dir_offset = offset + 2 * hashsz;

 if (sz <= 1 || end[-1] != '\0')
  return ((void*)0);
 end--;

 ident_len = decode_varint(&next);
 if (next + ident_len > end)
  return ((void*)0);
 ident = (const char *)next;
 next += ident_len;

 if (next + exclude_per_dir_offset + 1 > end)
  return ((void*)0);

 uc = xcalloc(1, sizeof(*uc));
 strbuf_init(&uc->ident, ident_len);
 strbuf_add(&uc->ident, ident, ident_len);
 load_oid_stat(&uc->ss_info_exclude,
        next + ouc_offset(info_exclude_stat),
        next + offset);
 load_oid_stat(&uc->ss_excludes_file,
        next + ouc_offset(excludes_file_stat),
        next + offset + hashsz);
 uc->dir_flags = get_be32(next + ouc_offset(dir_flags));
 exclude_per_dir = (const char *)next + exclude_per_dir_offset;
 uc->exclude_per_dir = xstrdup(exclude_per_dir);

 next += exclude_per_dir_offset + strlen(exclude_per_dir) + 1;
 if (next >= end)
  goto done2;

 len = decode_varint(&next);
 if (next > end || len == 0)
  goto done2;

 rd.valid = ewah_new();
 rd.check_only = ewah_new();
 rd.sha1_valid = ewah_new();
 rd.data = next;
 rd.end = end;
 rd.index = 0;
 ALLOC_ARRAY(rd.ucd, len);

 if (read_one_dir(&uc->root, &rd) || rd.index != len)
  goto done;

 next = rd.data;
 len = ewah_read_mmap(rd.valid, next, end - next);
 if (len < 0)
  goto done;

 next += len;
 len = ewah_read_mmap(rd.check_only, next, end - next);
 if (len < 0)
  goto done;

 next += len;
 len = ewah_read_mmap(rd.sha1_valid, next, end - next);
 if (len < 0)
  goto done;

 ewah_each_bit(rd.check_only, set_check_only, &rd);
 rd.data = next + len;
 ewah_each_bit(rd.valid, read_stat, &rd);
 ewah_each_bit(rd.sha1_valid, read_oid, &rd);
 next = rd.data;

done:
 free(rd.ucd);
 ewah_free(rd.valid);
 ewah_free(rd.check_only);
 ewah_free(rd.sha1_valid);
done2:
 if (next != end) {
  free_untracked_cache(uc);
  uc = ((void*)0);
 }
 return uc;
}
