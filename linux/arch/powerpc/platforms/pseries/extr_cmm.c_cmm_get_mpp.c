
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvcall_mpp_data {scalar_t__ loan_request; } ;
typedef int s64 ;


 int H_SUCCESS ;
 int PAGE_SIZE ;
 int cmm_dbg (char*,long,long,long,long,long) ;
 long div_s64 (int ,int) ;
 int h_get_mpp (struct hvcall_mpp_data*) ;
 long loaned_pages ;
 long loaned_pages_target ;
 int min_mem_mb ;
 long oom_freed_pages ;
 long totalram_pages () ;

__attribute__((used)) static void cmm_get_mpp(void)
{
 int rc;
 struct hvcall_mpp_data mpp_data;
 signed long active_pages_target, page_loan_request, target;
 signed long total_pages = totalram_pages() + loaned_pages;
 signed long min_mem_pages = (min_mem_mb * 1024 * 1024) / PAGE_SIZE;

 rc = h_get_mpp(&mpp_data);

 if (rc != H_SUCCESS)
  return;

 page_loan_request = div_s64((s64)mpp_data.loan_request, PAGE_SIZE);
 target = page_loan_request + (signed long)loaned_pages;

 if (target < 0 || total_pages < min_mem_pages)
  target = 0;

 if (target > oom_freed_pages)
  target -= oom_freed_pages;
 else
  target = 0;

 active_pages_target = total_pages - target;

 if (min_mem_pages > active_pages_target)
  target = total_pages - min_mem_pages;

 if (target < 0)
  target = 0;

 loaned_pages_target = target;

 cmm_dbg("delta = %ld, loaned = %lu, target = %lu, oom = %lu, totalram = %lu\n",
  page_loan_request, loaned_pages, loaned_pages_target,
  oom_freed_pages, totalram_pages());
}
