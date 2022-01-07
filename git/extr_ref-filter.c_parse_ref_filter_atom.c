
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;
struct TYPE_11__ {int * contentp; } ;
struct TYPE_15__ {int content; TYPE_2__ info; } ;
struct TYPE_10__ {int * contentp; } ;
struct TYPE_14__ {int content; TYPE_1__ info; } ;
struct TYPE_13__ {char* name; scalar_t__ source; int u; int type; } ;
struct TYPE_12__ {char* name; scalar_t__ source; scalar_t__ (* parser ) (struct ref_format const*,TYPE_4__*,char const*,struct strbuf*) ;int cmp_type; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int REALLOC_ARRAY (TYPE_4__*,int) ;
 scalar_t__ SOURCE_NONE ;
 scalar_t__ SOURCE_OBJ ;
 int _ (char*) ;
 int have_git_dir () ;
 char* memchr (char const*,char,int) ;
 int memcmp (char*,char const*,int) ;
 int memset (int *,int ,int) ;
 int need_symref ;
 int need_tagged ;
 TYPE_7__ oi ;
 TYPE_6__ oi_deref ;
 int strbuf_addf_ret (struct strbuf*,int,int ,int,char const*) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ stub1 (struct ref_format const*,TYPE_4__*,char const*,struct strbuf*) ;
 TYPE_4__* used_atom ;
 int used_atom_cnt ;
 TYPE_3__* valid_atom ;
 char* xmemdupz (char const*,int) ;

__attribute__((used)) static int parse_ref_filter_atom(const struct ref_format *format,
     const char *atom, const char *ep,
     struct strbuf *err)
{
 const char *sp;
 const char *arg;
 int i, at, atom_len;

 sp = atom;
 if (*sp == '*' && sp < ep)
  sp++;
 if (ep <= sp)
  return strbuf_addf_ret(err, -1, _("malformed field name: %.*s"),
           (int)(ep-atom), atom);


 for (i = 0; i < used_atom_cnt; i++) {
  int len = strlen(used_atom[i].name);
  if (len == ep - atom && !memcmp(used_atom[i].name, atom, len))
   return i;
 }







 arg = memchr(sp, ':', ep - sp);
 atom_len = (arg ? arg : ep) - sp;


 for (i = 0; i < ARRAY_SIZE(valid_atom); i++) {
  int len = strlen(valid_atom[i].name);
  if (len == atom_len && !memcmp(valid_atom[i].name, sp, len))
   break;
 }

 if (ARRAY_SIZE(valid_atom) <= i)
  return strbuf_addf_ret(err, -1, _("unknown field name: %.*s"),
           (int)(ep-atom), atom);
 if (valid_atom[i].source != SOURCE_NONE && !have_git_dir())
  return strbuf_addf_ret(err, -1,
           _("not a git repository, but the field '%.*s' requires access to object data"),
           (int)(ep-atom), atom);


 at = used_atom_cnt;
 used_atom_cnt++;
 REALLOC_ARRAY(used_atom, used_atom_cnt);
 used_atom[at].name = xmemdupz(atom, ep - atom);
 used_atom[at].type = valid_atom[i].cmp_type;
 used_atom[at].source = valid_atom[i].source;
 if (used_atom[at].source == SOURCE_OBJ) {
  if (*atom == '*')
   oi_deref.info.contentp = &oi_deref.content;
  else
   oi.info.contentp = &oi.content;
 }
 if (arg) {
  arg = used_atom[at].name + (arg - atom) + 1;
  if (!*arg) {




   arg = ((void*)0);
  }
 }
 memset(&used_atom[at].u, 0, sizeof(used_atom[at].u));
 if (valid_atom[i].parser && valid_atom[i].parser(format, &used_atom[at], arg, err))
  return -1;
 if (*atom == '*')
  need_tagged = 1;
 if (!strcmp(valid_atom[i].name, "symref"))
  need_symref = 1;
 return at;
}
