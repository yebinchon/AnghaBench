
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct used_atom {char* name; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;
struct TYPE_5__ {int * disk_sizep; int * sizep; } ;
struct TYPE_8__ {int disk_size; TYPE_1__ info; int size; } ;
struct TYPE_6__ {int * disk_sizep; int * sizep; } ;
struct TYPE_7__ {int disk_size; TYPE_2__ info; int size; } ;


 int _ (char*) ;
 TYPE_4__ oi ;
 TYPE_3__ oi_deref ;
 int strbuf_addf_ret (struct strbuf*,int,int ,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int objectsize_atom_parser(const struct ref_format *format, struct used_atom *atom,
      const char *arg, struct strbuf *err)
{
 if (!arg) {
  if (*atom->name == '*')
   oi_deref.info.sizep = &oi_deref.size;
  else
   oi.info.sizep = &oi.size;
 } else if (!strcmp(arg, "disk")) {
  if (*atom->name == '*')
   oi_deref.info.disk_sizep = &oi_deref.disk_size;
  else
   oi.info.disk_sizep = &oi.disk_size;
 } else
  return strbuf_addf_ret(err, -1, _("unrecognized %%(objectsize) argument: %s"), arg);
 return 0;
}
