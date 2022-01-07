
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* tab; int finished; int sep; char const* p; } ;
typedef TYPE_1__ ks_tokaux_t ;



char *kstrtok(const char *str, const char *sep, ks_tokaux_t *aux)
{
 const char *p, *start;
 if (sep) {
  if (str == 0 && (aux->tab[0]&1)) return 0;
  aux->finished = 0;
  if (sep[1]) {
   aux->sep = -1;
   aux->tab[0] = aux->tab[1] = aux->tab[2] = aux->tab[3] = 0;
   for (p = sep; *p; ++p) aux->tab[*p>>6] |= 1ull<<(*p&0x3f);
  } else aux->sep = sep[0];
 }
 if (aux->finished) return 0;
 else if (str) aux->p = str - 1, aux->finished = 0;
 if (aux->sep < 0) {
  for (p = start = aux->p + 1; *p; ++p)
   if (aux->tab[*p>>6]>>(*p&0x3f)&1) break;
 } else {
  for (p = start = aux->p + 1; *p; ++p)
   if (*p == aux->sep) break;
 }
 aux->p = p;
 if (*p == 0) aux->finished = 1;
 return (char*)start;
}
