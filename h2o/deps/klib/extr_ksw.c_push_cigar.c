
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int* realloc (int*,int) ;

__attribute__((used)) static inline uint32_t *push_cigar(int *n_cigar, int *m_cigar, uint32_t *cigar, int op, int len)
{
 if (*n_cigar == 0 || op != (cigar[(*n_cigar) - 1]&0xf)) {
  if (*n_cigar == *m_cigar) {
   *m_cigar = *m_cigar? (*m_cigar)<<1 : 4;
   cigar = realloc(cigar, (*m_cigar) << 2);
  }
  cigar[(*n_cigar)++] = len<<4 | op;
 } else cigar[(*n_cigar)-1] += len<<4;
 return cigar;
}
