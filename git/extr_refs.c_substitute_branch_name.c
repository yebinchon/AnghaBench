
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct repository {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int repo_interpret_branch_name (struct repository*,char const*,int,struct strbuf*,int ) ;
 char* strbuf_detach (struct strbuf*,size_t*) ;

__attribute__((used)) static char *substitute_branch_name(struct repository *r,
        const char **string, int *len)
{
 struct strbuf buf = STRBUF_INIT;
 int ret = repo_interpret_branch_name(r, *string, *len, &buf, 0);

 if (ret == *len) {
  size_t size;
  *string = strbuf_detach(&buf, &size);
  *len = size;
  return (char *)*string;
 }

 return ((void*)0);
}
