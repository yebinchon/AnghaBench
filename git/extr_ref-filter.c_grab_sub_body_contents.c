
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ option; int trailer_opts; int nlines; } ;
struct TYPE_4__ {TYPE_1__ contents; } ;
struct used_atom {char* name; TYPE_2__ u; } ;
struct strbuf {int dummy; } ;
struct atom_value {void* s; } ;


 scalar_t__ C_BARE ;
 scalar_t__ C_BODY ;
 scalar_t__ C_BODY_DEP ;
 scalar_t__ C_LINES ;
 scalar_t__ C_SIG ;
 scalar_t__ C_SUB ;
 scalar_t__ C_TRAILERS ;
 struct strbuf STRBUF_INIT ;
 int append_lines (struct strbuf*,char const*,int,int ) ;
 void* copy_subject (char const*,unsigned long) ;
 int find_subpos (void*,char const**,unsigned long*,char const**,unsigned long*,unsigned long*,char const**,unsigned long*) ;
 int format_trailers_from_commit (struct strbuf*,char const*,int *) ;
 int starts_with (char const*,char*) ;
 void* strbuf_detach (struct strbuf*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 struct used_atom* used_atom ;
 int used_atom_cnt ;
 void* xmemdupz (char const*,unsigned long) ;
 void* xstrdup (char const*) ;

__attribute__((used)) static void grab_sub_body_contents(struct atom_value *val, int deref, void *buf)
{
 int i;
 const char *subpos = ((void*)0), *bodypos = ((void*)0), *sigpos = ((void*)0);
 unsigned long sublen = 0, bodylen = 0, nonsiglen = 0, siglen = 0;

 for (i = 0; i < used_atom_cnt; i++) {
  struct used_atom *atom = &used_atom[i];
  const char *name = atom->name;
  struct atom_value *v = &val[i];
  if (!!deref != (*name == '*'))
   continue;
  if (deref)
   name++;
  if (strcmp(name, "subject") &&
      strcmp(name, "body") &&
      !starts_with(name, "trailers") &&
      !starts_with(name, "contents"))
   continue;
  if (!subpos)
   find_subpos(buf,
        &subpos, &sublen,
        &bodypos, &bodylen, &nonsiglen,
        &sigpos, &siglen);

  if (atom->u.contents.option == C_SUB)
   v->s = copy_subject(subpos, sublen);
  else if (atom->u.contents.option == C_BODY_DEP)
   v->s = xmemdupz(bodypos, bodylen);
  else if (atom->u.contents.option == C_BODY)
   v->s = xmemdupz(bodypos, nonsiglen);
  else if (atom->u.contents.option == C_SIG)
   v->s = xmemdupz(sigpos, siglen);
  else if (atom->u.contents.option == C_LINES) {
   struct strbuf s = STRBUF_INIT;
   const char *contents_end = bodylen + bodypos - siglen;


   append_lines(&s, subpos, contents_end - subpos, atom->u.contents.nlines);
   v->s = strbuf_detach(&s, ((void*)0));
  } else if (atom->u.contents.option == C_TRAILERS) {
   struct strbuf s = STRBUF_INIT;


   format_trailers_from_commit(&s, subpos, &atom->u.contents.trailer_opts);

   v->s = strbuf_detach(&s, ((void*)0));
  } else if (atom->u.contents.option == C_BARE)
   v->s = xstrdup(subpos);
 }
}
