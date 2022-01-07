
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_13__ {int score; int qe; int te; int tb; int qb; } ;
typedef TYPE_1__ kswr_t ;
struct TYPE_14__ {int size; } ;
typedef TYPE_2__ kswq_t ;
typedef int int8_t ;


 int KSW_XBYTE ;
 int KSW_XSTART ;
 int KSW_XSTOP ;
 int KSW_XSUBO ;
 int free (TYPE_2__*) ;
 TYPE_1__ ksw_i16 (TYPE_2__*,int,int const*,int,int,int) ;
 TYPE_2__* ksw_qinit (int,int,int const*,int,int const*) ;
 TYPE_1__ ksw_u8 (TYPE_2__*,int,int const*,int,int,int) ;
 int revseq (int,int const*) ;

kswr_t ksw_align(int qlen, uint8_t *query, int tlen, uint8_t *target, int m, const int8_t *mat, int gapo, int gape, int xtra, kswq_t **qry)
{
 int size;
 kswq_t *q;
 kswr_t r, rr;
 kswr_t (*func)(kswq_t*, int, const uint8_t*, int, int, int);

 q = (qry && *qry)? *qry : ksw_qinit((xtra&KSW_XBYTE)? 1 : 2, qlen, query, m, mat);
 if (qry && *qry == 0) *qry = q;
 func = q->size == 2? ksw_i16 : ksw_u8;
 size = q->size;
 r = func(q, tlen, target, gapo, gape, xtra);
 if (qry == 0) free(q);
 if ((xtra&KSW_XSTART) == 0 || ((xtra&KSW_XSUBO) && r.score < (xtra&0xffff))) return r;
 revseq(r.qe + 1, query); revseq(r.te + 1, target);
 q = ksw_qinit(size, r.qe + 1, query, m, mat);
 rr = func(q, tlen, target, gapo, gape, KSW_XSTOP | r.score);
 revseq(r.qe + 1, query); revseq(r.te + 1, target);
 free(q);
 if (r.score == rr.score)
  r.tb = r.te - rr.te, r.qb = r.qe - rr.qe;
 return r;
}
