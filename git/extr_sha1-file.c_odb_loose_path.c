
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;
struct object_id {int dummy; } ;
struct object_directory {int path; } ;


 int fill_loose_path (struct strbuf*,struct object_id const*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static const char *odb_loose_path(struct object_directory *odb,
      struct strbuf *buf,
      const struct object_id *oid)
{
 strbuf_reset(buf);
 strbuf_addstr(buf, odb->path);
 strbuf_addch(buf, '/');
 fill_loose_path(buf, oid);
 return buf->buf;
}
