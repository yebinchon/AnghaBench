
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __head_end ;
 scalar_t__ __kprobes_text_end ;
 scalar_t__ __kprobes_text_start ;
 scalar_t__ _stext ;

bool arch_within_kprobe_blacklist(unsigned long addr)
{
 return (addr >= (unsigned long)__kprobes_text_start &&
   addr < (unsigned long)__kprobes_text_end) ||
  (addr >= (unsigned long)_stext &&
   addr < (unsigned long)__head_end);
}
