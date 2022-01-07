
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpack_trees_options {struct string_list* unpack_rejects; } ;
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int buf; } ;
struct TYPE_2__ {int string; } ;


 int ERRORMSG (struct unpack_trees_options*,int) ;
 int NB_UNPACK_TREES_ERROR_TYPES ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 int error (int ,int ) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int string_list_clear (struct string_list*,int ) ;
 int super_prefixed (int ) ;

__attribute__((used)) static void display_error_msgs(struct unpack_trees_options *o)
{
 int e, i;
 int something_displayed = 0;
 for (e = 0; e < NB_UNPACK_TREES_ERROR_TYPES; e++) {
  struct string_list *rejects = &o->unpack_rejects[e];
  if (rejects->nr > 0) {
   struct strbuf path = STRBUF_INIT;
   something_displayed = 1;
   for (i = 0; i < rejects->nr; i++)
    strbuf_addf(&path, "\t%s\n", rejects->items[i].string);
   error(ERRORMSG(o, e), super_prefixed(path.buf));
   strbuf_release(&path);
  }
  string_list_clear(rejects, 0);
 }
 if (something_displayed)
  fprintf(stderr, _("Aborting\n"));
}
