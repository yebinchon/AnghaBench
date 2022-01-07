
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 struct strbuf STRBUF_INIT ;
 int index_mem (struct index_state*,struct object_id*,int ,int ,int,char const*,unsigned int) ;
 scalar_t__ strbuf_read (struct strbuf*,int,int) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int index_pipe(struct index_state *istate, struct object_id *oid,
        int fd, enum object_type type,
        const char *path, unsigned flags)
{
 struct strbuf sbuf = STRBUF_INIT;
 int ret;

 if (strbuf_read(&sbuf, fd, 4096) >= 0)
  ret = index_mem(istate, oid, sbuf.buf, sbuf.len, type, path, flags);
 else
  ret = -1;
 strbuf_release(&sbuf);
 return ret;
}
