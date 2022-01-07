
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref {char* name; int old_oid; } ;
typedef int FILE ;


 int BUG (char*,char const*) ;
 struct strbuf STRBUF_INIT ;
 int fclose (int *) ;
 int fprintf (int *,char*,char*,char*) ;
 char* oid_to_hex (int *) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_strip_suffix (struct strbuf*,char*) ;
 int * xfopen (int ,char*) ;

__attribute__((used)) static void write_promisor_file(const char *keep_name,
    struct ref **sought, int nr_sought)
{
 struct strbuf promisor_name = STRBUF_INIT;
 int suffix_stripped;
 FILE *output;
 int i;

 strbuf_addstr(&promisor_name, keep_name);
 suffix_stripped = strbuf_strip_suffix(&promisor_name, ".keep");
 if (!suffix_stripped)
  BUG("name of pack lockfile should end with .keep (was '%s')",
      keep_name);
 strbuf_addstr(&promisor_name, ".promisor");

 output = xfopen(promisor_name.buf, "w");
 for (i = 0; i < nr_sought; i++)
  fprintf(output, "%s %s\n", oid_to_hex(&sought[i]->old_oid),
   sought[i]->name);
 fclose(output);

 strbuf_release(&promisor_name);
}
