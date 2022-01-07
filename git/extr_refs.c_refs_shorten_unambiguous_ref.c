
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_store {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int assert (int) ;
 int free (char*) ;
 char** ref_rev_parse_rules ;
 scalar_t__ refs_ref_exists (struct ref_store*,int ) ;
 int sscanf (char const*,char*,char*) ;
 int st_add (int ,size_t) ;
 int st_mult (int,int) ;
 int strbuf_addf (struct strbuf*,char const*,int,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strlen (char*) ;
 char** xmalloc (int ) ;
 scalar_t__ xsnprintf (char*,size_t,char*,int,char*) ;
 char* xstrdup (char const*) ;

char *refs_shorten_unambiguous_ref(struct ref_store *refs,
       const char *refname, int strict)
{
 int i;
 static char **scanf_fmts;
 static int nr_rules;
 char *short_name;
 struct strbuf resolved_buf = STRBUF_INIT;

 if (!nr_rules) {






  size_t total_len = 0;
  size_t offset = 0;


  for (nr_rules = 0; ref_rev_parse_rules[nr_rules]; nr_rules++)

   total_len += strlen(ref_rev_parse_rules[nr_rules]) - 2 + 1;

  scanf_fmts = xmalloc(st_add(st_mult(sizeof(char *), nr_rules), total_len));

  offset = 0;
  for (i = 0; i < nr_rules; i++) {
   assert(offset < total_len);
   scanf_fmts[i] = (char *)&scanf_fmts[nr_rules] + offset;
   offset += xsnprintf(scanf_fmts[i], total_len - offset,
         ref_rev_parse_rules[i], 2, "%s") + 1;
  }
 }


 if (!nr_rules)
  return xstrdup(refname);


 short_name = xstrdup(refname);


 for (i = nr_rules - 1; i > 0 ; --i) {
  int j;
  int rules_to_fail = i;
  int short_name_len;

  if (1 != sscanf(refname, scanf_fmts[i], short_name))
   continue;

  short_name_len = strlen(short_name);





  if (strict)
   rules_to_fail = nr_rules;





  for (j = 0; j < rules_to_fail; j++) {
   const char *rule = ref_rev_parse_rules[j];


   if (i == j)
    continue;






   strbuf_reset(&resolved_buf);
   strbuf_addf(&resolved_buf, rule,
        short_name_len, short_name);
   if (refs_ref_exists(refs, resolved_buf.buf))
    break;
  }





  if (j == rules_to_fail) {
   strbuf_release(&resolved_buf);
   return short_name;
  }
 }

 strbuf_release(&resolved_buf);
 free(short_name);
 return xstrdup(refname);
}
