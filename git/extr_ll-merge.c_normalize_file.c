
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int len; } ;
struct index_state {int dummy; } ;
struct TYPE_3__ {int ptr; int size; } ;
typedef TYPE_1__ mmfile_t ;


 struct strbuf STRBUF_INIT ;
 int free (int ) ;
 scalar_t__ renormalize_buffer (struct index_state*,char const*,int ,int ,struct strbuf*) ;
 int strbuf_detach (struct strbuf*,int *) ;

__attribute__((used)) static void normalize_file(mmfile_t *mm, const char *path, struct index_state *istate)
{
 struct strbuf strbuf = STRBUF_INIT;
 if (renormalize_buffer(istate, path, mm->ptr, mm->size, &strbuf)) {
  free(mm->ptr);
  mm->size = strbuf.len;
  mm->ptr = strbuf_detach(&strbuf, ((void*)0));
 }
}
