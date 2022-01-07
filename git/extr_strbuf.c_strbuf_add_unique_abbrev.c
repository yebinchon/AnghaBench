
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; scalar_t__ buf; } ;
struct object_id {int dummy; } ;


 scalar_t__ GIT_MAX_HEXSZ ;
 int find_unique_abbrev_r (scalar_t__,struct object_id const*,int) ;
 int strbuf_grow (struct strbuf*,scalar_t__) ;
 int strbuf_setlen (struct strbuf*,scalar_t__) ;

void strbuf_add_unique_abbrev(struct strbuf *sb, const struct object_id *oid,
         int abbrev_len)
{
 int r;
 strbuf_grow(sb, GIT_MAX_HEXSZ + 1);
 r = find_unique_abbrev_r(sb->buf + sb->len, oid, abbrev_len);
 strbuf_setlen(sb, sb->len + r);
}
