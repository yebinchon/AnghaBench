
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; int pf; int sig; } ;
struct ucode_cpu_info {TYPE_1__ cpu_sig; } ;
struct microcode_header_intel {int rev; int pf; int sig; } ;
struct microcode_intel {struct microcode_header_intel hdr; } ;


 unsigned int get_totalsize (struct microcode_header_intel*) ;
 int has_newer_microcode (void*,int ,int ,int ) ;
 int microcode_matches (struct microcode_header_intel*,int ) ;
 scalar_t__ microcode_sanity_check (void*,int ) ;
 int save_microcode_patch (void*,unsigned int) ;

__attribute__((used)) static struct microcode_intel *
scan_microcode(void *data, size_t size, struct ucode_cpu_info *uci, bool save)
{
 struct microcode_header_intel *mc_header;
 struct microcode_intel *patch = ((void*)0);
 unsigned int mc_size;

 while (size) {
  if (size < sizeof(struct microcode_header_intel))
   break;

  mc_header = (struct microcode_header_intel *)data;

  mc_size = get_totalsize(mc_header);
  if (!mc_size ||
      mc_size > size ||
      microcode_sanity_check(data, 0) < 0)
   break;

  size -= mc_size;

  if (!microcode_matches(mc_header, uci->cpu_sig.sig)) {
   data += mc_size;
   continue;
  }

  if (save) {
   save_microcode_patch(data, mc_size);
   goto next;
  }


  if (!patch) {
   if (!has_newer_microcode(data,
       uci->cpu_sig.sig,
       uci->cpu_sig.pf,
       uci->cpu_sig.rev))
    goto next;

  } else {
   struct microcode_header_intel *phdr = &patch->hdr;

   if (!has_newer_microcode(data,
       phdr->sig,
       phdr->pf,
       phdr->rev))
    goto next;
  }


  patch = data;

next:
  data += mc_size;
 }

 if (size)
  return ((void*)0);

 return patch;
}
