
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct strbuf {int dummy; } ;
struct argv_array {int argc; int argv; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int QSORT (int ,int ,int ) ;
 struct strbuf STRBUF_INIT ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_pushv (struct argv_array*,char const**) ;
 int find_longest_prefixes_1 (struct string_list*,struct strbuf*,int ,int ) ;
 int qsort_strcmp ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void find_longest_prefixes(struct string_list *out,
      const char **patterns)
{
 struct argv_array sorted = ARGV_ARRAY_INIT;
 struct strbuf prefix = STRBUF_INIT;

 argv_array_pushv(&sorted, patterns);
 QSORT(sorted.argv, sorted.argc, qsort_strcmp);

 find_longest_prefixes_1(out, &prefix, sorted.argv, sorted.argc);

 argv_array_clear(&sorted);
 strbuf_release(&prefix);
}
