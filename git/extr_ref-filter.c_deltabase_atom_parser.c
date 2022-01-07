
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct used_atom {char* name; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;
struct TYPE_10__ {int hash; } ;
struct TYPE_9__ {int delta_base_sha1; } ;
struct TYPE_12__ {TYPE_4__ delta_base_oid; TYPE_3__ info; } ;
struct TYPE_8__ {int hash; } ;
struct TYPE_7__ {int delta_base_sha1; } ;
struct TYPE_11__ {TYPE_2__ delta_base_oid; TYPE_1__ info; } ;


 int _ (char*) ;
 TYPE_6__ oi ;
 TYPE_5__ oi_deref ;
 int strbuf_addf_ret (struct strbuf*,int,int ) ;

__attribute__((used)) static int deltabase_atom_parser(const struct ref_format *format, struct used_atom *atom,
     const char *arg, struct strbuf *err)
{
 if (arg)
  return strbuf_addf_ret(err, -1, _("%%(deltabase) does not take arguments"));
 if (*atom->name == '*')
  oi_deref.info.delta_base_sha1 = oi_deref.delta_base_oid.hash;
 else
  oi.info.delta_base_sha1 = oi.delta_base_oid.hash;
 return 0;
}
