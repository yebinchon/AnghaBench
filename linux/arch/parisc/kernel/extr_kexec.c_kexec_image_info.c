
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {unsigned long nr_segments; int cmdline_buf; scalar_t__ cmdline_buf_len; scalar_t__ file_mode; int head; int start; int type; } ;


 int kexec_show_segment_info (struct kimage const*,unsigned long) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void kexec_image_info(const struct kimage *kimage)
{
 unsigned long i;

 pr_debug("kexec kimage info:\n");
 pr_debug("  type:        %d\n", kimage->type);
 pr_debug("  start:       %lx\n", kimage->start);
 pr_debug("  head:        %lx\n", kimage->head);
 pr_debug("  nr_segments: %lu\n", kimage->nr_segments);

 for (i = 0; i < kimage->nr_segments; i++)
  kexec_show_segment_info(kimage, i);







}
