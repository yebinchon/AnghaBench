
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;


 int ADD_CACHE_JUST_APPEND ;
 int read_one_entry_opt (struct index_state*,struct object_id const*,int ,int ,char const*,unsigned int,int,int ) ;

__attribute__((used)) static int read_one_entry_quick(const struct object_id *oid, struct strbuf *base,
    const char *pathname, unsigned mode, int stage,
    void *context)
{
 struct index_state *istate = context;
 return read_one_entry_opt(istate, oid, base->buf, base->len, pathname,
      mode, stage,
      ADD_CACHE_JUST_APPEND);
}
