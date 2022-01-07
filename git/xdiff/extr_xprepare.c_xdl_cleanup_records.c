
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t ha; } ;
typedef TYPE_1__ xrecord_t ;
struct TYPE_9__ {TYPE_3__** rcrecs; } ;
typedef TYPE_2__ xdlclassifier_t ;
struct TYPE_10__ {long len2; long len1; } ;
typedef TYPE_3__ xdlclass_t ;
struct TYPE_11__ {int nrec; long dstart; long dend; long* rindex; size_t* ha; int* rchg; long nreff; TYPE_1__** recs; } ;
typedef TYPE_4__ xdfile_t ;


 long XDL_MAX_EQLIMIT ;
 int memset (char*,int ,int) ;
 long xdl_bogosqrt (int) ;
 int xdl_clean_mmatch (char*,long,size_t,long) ;
 int xdl_free (char*) ;
 scalar_t__ xdl_malloc (int) ;

__attribute__((used)) static int xdl_cleanup_records(xdlclassifier_t *cf, xdfile_t *xdf1, xdfile_t *xdf2) {
 long i, nm, nreff, mlim;
 xrecord_t **recs;
 xdlclass_t *rcrec;
 char *dis, *dis1, *dis2;

 if (!(dis = (char *) xdl_malloc(xdf1->nrec + xdf2->nrec + 2))) {

  return -1;
 }
 memset(dis, 0, xdf1->nrec + xdf2->nrec + 2);
 dis1 = dis;
 dis2 = dis1 + xdf1->nrec + 1;

 if ((mlim = xdl_bogosqrt(xdf1->nrec)) > XDL_MAX_EQLIMIT)
  mlim = XDL_MAX_EQLIMIT;
 for (i = xdf1->dstart, recs = &xdf1->recs[xdf1->dstart]; i <= xdf1->dend; i++, recs++) {
  rcrec = cf->rcrecs[(*recs)->ha];
  nm = rcrec ? rcrec->len2 : 0;
  dis1[i] = (nm == 0) ? 0: (nm >= mlim) ? 2: 1;
 }

 if ((mlim = xdl_bogosqrt(xdf2->nrec)) > XDL_MAX_EQLIMIT)
  mlim = XDL_MAX_EQLIMIT;
 for (i = xdf2->dstart, recs = &xdf2->recs[xdf2->dstart]; i <= xdf2->dend; i++, recs++) {
  rcrec = cf->rcrecs[(*recs)->ha];
  nm = rcrec ? rcrec->len1 : 0;
  dis2[i] = (nm == 0) ? 0: (nm >= mlim) ? 2: 1;
 }

 for (nreff = 0, i = xdf1->dstart, recs = &xdf1->recs[xdf1->dstart];
      i <= xdf1->dend; i++, recs++) {
  if (dis1[i] == 1 ||
      (dis1[i] == 2 && !xdl_clean_mmatch(dis1, i, xdf1->dstart, xdf1->dend))) {
   xdf1->rindex[nreff] = i;
   xdf1->ha[nreff] = (*recs)->ha;
   nreff++;
  } else
   xdf1->rchg[i] = 1;
 }
 xdf1->nreff = nreff;

 for (nreff = 0, i = xdf2->dstart, recs = &xdf2->recs[xdf2->dstart];
      i <= xdf2->dend; i++, recs++) {
  if (dis2[i] == 1 ||
      (dis2[i] == 2 && !xdl_clean_mmatch(dis2, i, xdf2->dstart, xdf2->dend))) {
   xdf2->rindex[nreff] = i;
   xdf2->ha[nreff] = (*recs)->ha;
   nreff++;
  } else
   xdf2->rchg[i] = 1;
 }
 xdf2->nreff = nreff;

 xdl_free(dis);

 return 0;
}
