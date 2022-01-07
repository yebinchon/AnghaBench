
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; int cmp; } ;
struct strbuf {size_t len; int buf; } ;
struct TYPE_2__ {char* string; } ;


 struct string_list STRING_LIST_INIT_DUP ;
 int migrate_one (struct strbuf*,struct strbuf*) ;
 int pack_copy_cmp ;
 scalar_t__ read_dir_paths (struct string_list*,int ) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 int string_list_clear (struct string_list*,int ) ;
 int string_list_sort (struct string_list*) ;

__attribute__((used)) static int migrate_paths(struct strbuf *src, struct strbuf *dst)
{
 size_t src_len = src->len, dst_len = dst->len;
 struct string_list paths = STRING_LIST_INIT_DUP;
 int i;
 int ret = 0;

 if (read_dir_paths(&paths, src->buf) < 0)
  return -1;
 paths.cmp = pack_copy_cmp;
 string_list_sort(&paths);

 for (i = 0; i < paths.nr; i++) {
  const char *name = paths.items[i].string;

  strbuf_addf(src, "/%s", name);
  strbuf_addf(dst, "/%s", name);

  ret |= migrate_one(src, dst);

  strbuf_setlen(src, src_len);
  strbuf_setlen(dst, dst_len);
 }

 string_list_clear(&paths, 0);
 return ret;
}
