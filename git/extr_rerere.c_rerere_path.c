
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rerere_id {scalar_t__ variant; } ;


 char const* git_path (char*,int ,...) ;
 int rerere_id_hex (struct rerere_id const*) ;

const char *rerere_path(const struct rerere_id *id, const char *file)
{
 if (!file)
  return git_path("rr-cache/%s", rerere_id_hex(id));

 if (id->variant <= 0)
  return git_path("rr-cache/%s/%s", rerere_id_hex(id), file);

 return git_path("rr-cache/%s/%s.%d",
   rerere_id_hex(id), file, id->variant);
}
