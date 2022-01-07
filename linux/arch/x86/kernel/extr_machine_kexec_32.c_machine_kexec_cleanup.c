
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int control_code_page; } ;


 int machine_kexec_free_page_tables (struct kimage*) ;
 scalar_t__ page_address (int ) ;
 int set_memory_nx (unsigned long,int) ;

void machine_kexec_cleanup(struct kimage *image)
{
 set_memory_nx((unsigned long)page_address(image->control_code_page), 1);
 machine_kexec_free_page_tables(image);
}
