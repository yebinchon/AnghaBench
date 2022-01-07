
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct push_cas_option {int nr; TYPE_1__* entry; } ;
struct TYPE_2__ {struct TYPE_2__* refname; } ;


 int free (TYPE_1__*) ;
 int memset (struct push_cas_option*,int ,int) ;

__attribute__((used)) static void clear_cas_option(struct push_cas_option *cas)
{
 int i;

 for (i = 0; i < cas->nr; i++)
  free(cas->entry[i].refname);
 free(cas->entry);
 memset(cas, 0, sizeof(*cas));
}
