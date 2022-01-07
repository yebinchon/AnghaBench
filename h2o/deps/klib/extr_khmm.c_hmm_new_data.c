
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hmm_par_t ;
struct TYPE_3__ {int L; char* seq; } ;
typedef TYPE_1__ hmm_data_t ;


 scalar_t__ calloc (int,int) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char const*,int) ;

hmm_data_t *hmm_new_data(int L, const char *seq, const hmm_par_t *hp)
{
 hmm_data_t *hd;
 hd = (hmm_data_t*)calloc(1, sizeof(hmm_data_t));
 hd->L = L;
 hd->seq = (char*)malloc(L + 1);
 memcpy(hd->seq + 1, seq, L);
 return hd;
}
