
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long start; scalar_t__ end; } ;
struct TYPE_5__ {unsigned long start; scalar_t__ end; } ;
struct TYPE_4__ {int control_code_page; } ;


 scalar_t__ KEXEC_CONTROL_PAGE_SIZE ;
 scalar_t__ PAGE_SIZE ;
 unsigned long PFN_PHYS (int ) ;
 TYPE_3__ crashk_low_res ;
 TYPE_2__ crashk_res ;
 TYPE_1__* kexec_crash_image ;
 int kexec_mark_range (unsigned long,scalar_t__,int) ;
 int page_to_pfn (int ) ;

__attribute__((used)) static void kexec_mark_crashkres(bool protect)
{
 unsigned long control;

 kexec_mark_range(crashk_low_res.start, crashk_low_res.end, protect);


 control = PFN_PHYS(page_to_pfn(kexec_crash_image->control_code_page));

 kexec_mark_range(crashk_res.start, control + PAGE_SIZE - 1, protect);
 control += KEXEC_CONTROL_PAGE_SIZE;
 kexec_mark_range(control, crashk_res.end, protect);
}
