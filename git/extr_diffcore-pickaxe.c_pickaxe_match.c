
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct userdiff_driver {int dummy; } ;
struct TYPE_12__ {int text; scalar_t__ allow_textconv; } ;
struct diff_options {int pickaxe_opts; int repo; TYPE_1__ flags; int * pickaxe; scalar_t__ objfind; } ;
struct diff_filepair {TYPE_7__* two; TYPE_7__* one; } ;
typedef int regex_t ;
typedef int (* pickaxe_fn ) (TYPE_2__*,TYPE_2__*,struct diff_options*,int *,int ) ;
struct TYPE_13__ {int ptr; void* size; } ;
typedef TYPE_2__ mmfile_t ;
typedef int kwset_t ;
struct TYPE_14__ {int oid; } ;


 scalar_t__ DIFF_FILE_VALID (TYPE_7__*) ;
 int DIFF_PICKAXE_KIND_G ;
 scalar_t__ diff_filespec_is_binary (int ,TYPE_7__*) ;
 int diff_free_filespec_data (TYPE_7__*) ;
 scalar_t__ diff_unmodified_pair (struct diff_filepair*) ;
 void* fill_textconv (int ,struct userdiff_driver*,TYPE_7__*,int *) ;
 int free (int ) ;
 struct userdiff_driver* get_textconv (int ,TYPE_7__*) ;
 scalar_t__ oidset_contains (scalar_t__,int *) ;

__attribute__((used)) static int pickaxe_match(struct diff_filepair *p, struct diff_options *o,
    regex_t *regexp, kwset_t kws, pickaxe_fn fn)
{
 struct userdiff_driver *textconv_one = ((void*)0);
 struct userdiff_driver *textconv_two = ((void*)0);
 mmfile_t mf1, mf2;
 int ret;


 if (!DIFF_FILE_VALID(p->one) && !DIFF_FILE_VALID(p->two))
  return 0;

 if (o->objfind) {
  return (DIFF_FILE_VALID(p->one) &&
    oidset_contains(o->objfind, &p->one->oid)) ||
   (DIFF_FILE_VALID(p->two) &&
    oidset_contains(o->objfind, &p->two->oid));
 }

 if (!o->pickaxe[0])
  return 0;

 if (o->flags.allow_textconv) {
  textconv_one = get_textconv(o->repo, p->one);
  textconv_two = get_textconv(o->repo, p->two);
 }
 if (textconv_one == textconv_two && diff_unmodified_pair(p))
  return 0;

 if ((o->pickaxe_opts & DIFF_PICKAXE_KIND_G) &&
     !o->flags.text &&
     ((!textconv_one && diff_filespec_is_binary(o->repo, p->one)) ||
      (!textconv_two && diff_filespec_is_binary(o->repo, p->two))))
  return 0;

 mf1.size = fill_textconv(o->repo, textconv_one, p->one, &mf1.ptr);
 mf2.size = fill_textconv(o->repo, textconv_two, p->two, &mf2.ptr);

 ret = fn(DIFF_FILE_VALID(p->one) ? &mf1 : ((void*)0),
   DIFF_FILE_VALID(p->two) ? &mf2 : ((void*)0),
   o, regexp, kws);

 if (textconv_one)
  free(mf1.ptr);
 if (textconv_two)
  free(mf2.ptr);
 diff_free_filespec_data(p->one);
 diff_free_filespec_data(p->two);

 return ret;
}
