
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;
struct used_atom {TYPE_1__ u; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;


 int RESOLVE_REF_READING ;
 int resolve_refdup (char*,int ,int *,int *) ;

__attribute__((used)) static int head_atom_parser(const struct ref_format *format, struct used_atom *atom,
       const char *arg, struct strbuf *unused_err)
{
 atom->u.head = resolve_refdup("HEAD", RESOLVE_REF_READING, ((void*)0), ((void*)0));
 return 0;
}
