
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mod_section {int num_entries; int max_entries; TYPE_1__* shdr; } ;
struct TYPE_4__ {struct mod_section got; } ;
struct module {TYPE_2__ arch; } ;
struct got_entry {int dummy; } ;
struct TYPE_3__ {scalar_t__ sh_addr; } ;


 int BUG_ON (int) ;
 struct got_entry emit_got_entry (unsigned long) ;
 struct got_entry* get_got_entry (unsigned long,struct mod_section*) ;

unsigned long module_emit_got_entry(struct module *mod, unsigned long val)
{
 struct mod_section *got_sec = &mod->arch.got;
 int i = got_sec->num_entries;
 struct got_entry *got = get_got_entry(val, got_sec);

 if (got)
  return (unsigned long)got;


 got = (struct got_entry *)got_sec->shdr->sh_addr;
 got[i] = emit_got_entry(val);

 got_sec->num_entries++;
 BUG_ON(got_sec->num_entries > got_sec->max_entries);

 return (unsigned long)&got[i];
}
