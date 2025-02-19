
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int member_0; } ;
typedef TYPE_1__ xpparam_t ;
struct TYPE_9__ {int ctxlen; int member_0; } ;
typedef TYPE_2__ xdemitconf_t ;
struct TYPE_10__ {char* ptr; void* size; } ;
typedef TYPE_3__ mmfile_t ;


 int COST_MAX ;
 int _ (char*) ;
 int diffsize_consume ;
 int diffsize_hunk ;
 int error (int ) ;
 void* strlen (char const*) ;
 int xdi_diff_outf (TYPE_3__*,TYPE_3__*,int ,int ,int*,TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int diffsize(const char *a, const char *b)
{
 xpparam_t pp = { 0 };
 xdemitconf_t cfg = { 0 };
 mmfile_t mf1, mf2;
 int count = 0;

 mf1.ptr = (char *)a;
 mf1.size = strlen(a);
 mf2.ptr = (char *)b;
 mf2.size = strlen(b);

 cfg.ctxlen = 3;
 if (!xdi_diff_outf(&mf1, &mf2,
      diffsize_hunk, diffsize_consume, &count,
      &pp, &cfg))
  return count;

 error(_("failed to generate diff"));
 return COST_MAX;
}
