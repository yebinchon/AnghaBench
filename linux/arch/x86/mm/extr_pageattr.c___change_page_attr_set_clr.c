
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpa_data {unsigned long numpages; int flags; unsigned long curpage; } ;


 int BUG_ON (int) ;
 int CPA_ARRAY ;
 int CPA_PAGES_ARRAY ;
 int __change_page_attr (struct cpa_data*,int) ;
 int cpa_lock ;
 int cpa_process_alias (struct cpa_data*) ;
 int debug_pagealloc_enabled () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __change_page_attr_set_clr(struct cpa_data *cpa, int checkalias)
{
 unsigned long numpages = cpa->numpages;
 unsigned long rempages = numpages;
 int ret = 0;

 while (rempages) {




  cpa->numpages = rempages;

  if (cpa->flags & (CPA_ARRAY | CPA_PAGES_ARRAY))
   cpa->numpages = 1;

  if (!debug_pagealloc_enabled())
   spin_lock(&cpa_lock);
  ret = __change_page_attr(cpa, checkalias);
  if (!debug_pagealloc_enabled())
   spin_unlock(&cpa_lock);
  if (ret)
   goto out;

  if (checkalias) {
   ret = cpa_process_alias(cpa);
   if (ret)
    goto out;
  }






  BUG_ON(cpa->numpages > rempages || !cpa->numpages);
  rempages -= cpa->numpages;
  cpa->curpage += cpa->numpages;
 }

out:

 cpa->numpages = numpages;
 return ret;
}
