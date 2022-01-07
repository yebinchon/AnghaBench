
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int interhunkctxlen; int ctxlen; } ;
typedef TYPE_1__ xpparam_t ;
typedef int xpp ;
typedef int xecfg ;
typedef TYPE_1__ xdemitconf_t ;
struct diffgrep_cb {int hit; int * regexp; } ;
struct diff_options {int interhunkcontext; int context; } ;
typedef int regmatch_t ;
typedef int regex_t ;
struct TYPE_12__ {int size; int ptr; } ;
typedef TYPE_3__ mmfile_t ;
typedef int kwset_t ;


 int diffgrep_consume ;
 int discard_hunk_line ;
 int memset (TYPE_1__*,int ,int) ;
 int regexec_buf (int *,int ,int ,int,int *,int ) ;
 scalar_t__ xdi_diff_outf (TYPE_3__*,TYPE_3__*,int ,int ,struct diffgrep_cb*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int diff_grep(mmfile_t *one, mmfile_t *two,
       struct diff_options *o,
       regex_t *regexp, kwset_t kws)
{
 regmatch_t regmatch;
 struct diffgrep_cb ecbdata;
 xpparam_t xpp;
 xdemitconf_t xecfg;

 if (!one)
  return !regexec_buf(regexp, two->ptr, two->size,
        1, &regmatch, 0);
 if (!two)
  return !regexec_buf(regexp, one->ptr, one->size,
        1, &regmatch, 0);





 memset(&xpp, 0, sizeof(xpp));
 memset(&xecfg, 0, sizeof(xecfg));
 ecbdata.regexp = regexp;
 ecbdata.hit = 0;
 xecfg.ctxlen = o->context;
 xecfg.interhunkctxlen = o->interhunkcontext;
 if (xdi_diff_outf(one, two, discard_hunk_line, diffgrep_consume,
     &ecbdata, &xpp, &xecfg))
  return 0;
 return ecbdata.hit;
}
