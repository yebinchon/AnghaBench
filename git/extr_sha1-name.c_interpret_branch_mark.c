
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct repository {int dummy; } ;
typedef struct branch branch ;


 struct strbuf STRBUF_INIT ;
 struct branch* branch_get (char*) ;
 int branch_interpret_allowed (char const*,unsigned int) ;
 int die (char*,int ) ;
 int free (char*) ;
 scalar_t__ memchr (char const*,char,int) ;
 int set_shortened_ref (struct repository*,struct strbuf*,char const*) ;
 char* xmemdupz (char const*,int) ;

__attribute__((used)) static int interpret_branch_mark(struct repository *r,
     const char *name, int namelen,
     int at, struct strbuf *buf,
     int (*get_mark)(const char *, int),
     const char *(*get_data)(struct branch *,
        struct strbuf *),
     unsigned allowed)
{
 int len;
 struct branch *branch;
 struct strbuf err = STRBUF_INIT;
 const char *value;

 len = get_mark(name + at, namelen - at);
 if (!len)
  return -1;

 if (memchr(name, ':', at))
  return -1;

 if (at) {
  char *name_str = xmemdupz(name, at);
  branch = branch_get(name_str);
  free(name_str);
 } else
  branch = branch_get(((void*)0));

 value = get_data(branch, &err);
 if (!value)
  die("%s", err.buf);

 if (!branch_interpret_allowed(value, allowed))
  return -1;

 set_shortened_ref(r, buf, value);
 return len + at;
}
