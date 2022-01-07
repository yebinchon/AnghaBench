
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_6__ {int score; int te; int qe; int score2; int te2; } ;
typedef TYPE_1__ kswr_t ;
struct TYPE_7__ {int shift; int slen; int max; int * qp; int * Hmax; int * E; int * H1; int * H0; } ;
typedef TYPE_2__ kswq_t ;
typedef int int32_t ;
typedef int __m128i ;


 int KSW_XSTOP ;
 int KSW_XSUBO ;
 scalar_t__ LIKELY (int) ;
 scalar_t__ UNLIKELY (int) ;
 int __max_16 (int,int ) ;
 int _mm_adds_epu8 (int ,int ) ;
 int _mm_cmpeq_epi8 (int ,int ) ;
 int _mm_load_si128 (int *) ;
 int _mm_max_epu8 (int ,int ) ;
 int _mm_movemask_epi8 (int ) ;
 int _mm_set1_epi32 (int ) ;
 int _mm_set1_epi8 (int) ;
 int _mm_slli_si128 (int ,int) ;
 int _mm_store_si128 (int *,int ) ;
 int _mm_subs_epu8 (int ,int ) ;
 int free (int*) ;
 TYPE_1__ g_defr ;
 scalar_t__ realloc (int*,int) ;

kswr_t ksw_u8(kswq_t *q, int tlen, const uint8_t *target, int _gapo, int _gape, int xtra)
{
 int slen, i, m_b, n_b, te = -1, gmax = 0, minsc, endsc;
 uint64_t *b;
 __m128i zero, gapoe, gape, shift, *H0, *H1, *E, *Hmax;
 kswr_t r;
 r = g_defr;
 minsc = (xtra&KSW_XSUBO)? xtra&0xffff : 0x10000;
 endsc = (xtra&KSW_XSTOP)? xtra&0xffff : 0x10000;
 m_b = n_b = 0; b = 0;
 zero = _mm_set1_epi32(0);
 gapoe = _mm_set1_epi8(_gapo + _gape);
 gape = _mm_set1_epi8(_gape);
 shift = _mm_set1_epi8(q->shift);
 H0 = q->H0; H1 = q->H1; E = q->E; Hmax = q->Hmax;
 slen = q->slen;
 for (i = 0; i < slen; ++i) {
  _mm_store_si128(E + i, zero);
  _mm_store_si128(H0 + i, zero);
  _mm_store_si128(Hmax + i, zero);
 }

 for (i = 0; i < tlen; ++i) {
  int j, k, cmp, imax;
  __m128i e, h, f = zero, max = zero, *S = q->qp + target[i] * slen;
  h = _mm_load_si128(H0 + slen - 1);
  h = _mm_slli_si128(h, 1);
  for (j = 0; LIKELY(j < slen); ++j) {






   h = _mm_adds_epu8(h, _mm_load_si128(S + j));
   h = _mm_subs_epu8(h, shift);
   e = _mm_load_si128(E + j);
   h = _mm_max_epu8(h, e);
   h = _mm_max_epu8(h, f);
   max = _mm_max_epu8(max, h);
   _mm_store_si128(H1 + j, h);

   h = _mm_subs_epu8(h, gapoe);
   e = _mm_subs_epu8(e, gape);
   e = _mm_max_epu8(e, h);
   _mm_store_si128(E + j, e);

   f = _mm_subs_epu8(f, gape);
   f = _mm_max_epu8(f, h);

   h = _mm_load_si128(H0 + j);
  }

  for (k = 0; LIKELY(k < 16); ++k) {
   f = _mm_slli_si128(f, 1);
   for (j = 0; LIKELY(j < slen); ++j) {
    h = _mm_load_si128(H1 + j);
    h = _mm_max_epu8(h, f);
    _mm_store_si128(H1 + j, h);
    h = _mm_subs_epu8(h, gapoe);
    f = _mm_subs_epu8(f, gape);
    cmp = _mm_movemask_epi8(_mm_cmpeq_epi8(_mm_subs_epu8(f, h), zero));
    if (UNLIKELY(cmp == 0xffff)) goto end_loop16;
   }
  }
end_loop16:

  do { (max) = _mm_max_epu8((max), _mm_srli_si128((max), 8)); (max) = _mm_max_epu8((max), _mm_srli_si128((max), 4)); (max) = _mm_max_epu8((max), _mm_srli_si128((max), 2)); (max) = _mm_max_epu8((max), _mm_srli_si128((max), 1)); (imax) = _mm_extract_epi16((max), 0) & 0x00ff; } while (0);
  if (imax >= minsc) {
   if (n_b == 0 || (int32_t)b[n_b-1] + 1 != i) {
    if (n_b == m_b) {
     m_b = m_b? m_b<<1 : 8;
     b = (uint64_t*)realloc(b, 8 * m_b);
    }
    b[n_b++] = (uint64_t)imax<<32 | i;
   } else if ((int)(b[n_b-1]>>32) < imax) b[n_b-1] = (uint64_t)imax<<32 | i;
  }
  if (imax > gmax) {
   gmax = imax; te = i;
   for (j = 0; LIKELY(j < slen); ++j)
    _mm_store_si128(Hmax + j, _mm_load_si128(H1 + j));
   if (gmax + q->shift >= 255 || gmax >= endsc) break;
  }
  S = H1; H1 = H0; H0 = S;
 }
 r.score = gmax + q->shift < 255? gmax : 255;
 r.te = te;
 if (r.score != 255) {
  int max = -1, low, high, qlen = slen * 16;
  uint8_t *t = (uint8_t*)Hmax;
  for (i = 0; i < qlen; ++i, ++t)
   if ((int)*t > max) max = *t, r.qe = i / 16 + i % 16 * slen;

  if (b) {
   i = (r.score + q->max - 1) / q->max;
   low = te - i; high = te + i;
   for (i = 0; i < n_b; ++i) {
    int e = (int32_t)b[i];
    if ((e < low || e > high) && (int)(b[i]>>32) > r.score2)
     r.score2 = b[i]>>32, r.te2 = e;
   }
  }
 }
 free(b);
 return r;
}
