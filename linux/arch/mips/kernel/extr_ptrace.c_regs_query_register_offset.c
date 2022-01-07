
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs_offset {int offset; int * name; } ;


 int EINVAL ;
 struct pt_regs_offset* regoffset_table ;
 int strcmp (int *,char const*) ;

int regs_query_register_offset(const char *name)
{
        const struct pt_regs_offset *roff;
        for (roff = regoffset_table; roff->name != ((void*)0); roff++)
                if (!strcmp(roff->name, name))
                        return roff->offset;
        return -EINVAL;
}
