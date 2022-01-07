
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __entry_text_end ;
 char* __entry_text_start ;
 char* __irqentry_text_end ;
 char* __irqentry_text_start ;

__attribute__((used)) static bool in_entry_code(unsigned long ip)
{
 char *addr = (char *)ip;

 if (addr >= __entry_text_start && addr < __entry_text_end)
  return 1;

 if (addr >= __irqentry_text_start && addr < __irqentry_text_end)
  return 1;

 return 0;
}
