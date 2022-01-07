
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct collect_diff_cbdata* priv; int hunk_func; scalar_t__ interhunkctxlen; scalar_t__ ctxlen; } ;
typedef TYPE_1__ xpparam_t ;
typedef int xpp ;
typedef int xecfg ;
typedef TYPE_1__ xdemitconf_t ;
typedef TYPE_1__ xdemitcb_t ;
struct diff_ranges {int dummy; } ;
struct collect_diff_cbdata {struct diff_ranges* diff; int * member_0; } ;
typedef int mmfile_t ;
typedef int ecb ;


 int collect_diff_cb ;
 int memset (TYPE_1__*,int ,int) ;
 int xdi_diff (int *,int *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int collect_diff(mmfile_t *parent, mmfile_t *target, struct diff_ranges *out)
{
 struct collect_diff_cbdata cbdata = {((void*)0)};
 xpparam_t xpp;
 xdemitconf_t xecfg;
 xdemitcb_t ecb;

 memset(&xpp, 0, sizeof(xpp));
 memset(&xecfg, 0, sizeof(xecfg));
 xecfg.ctxlen = xecfg.interhunkctxlen = 0;

 cbdata.diff = out;
 xecfg.hunk_func = collect_diff_cb;
 memset(&ecb, 0, sizeof(ecb));
 ecb.priv = &cbdata;
 return xdi_diff(parent, target, &xpp, &xecfg, &ecb);
}
