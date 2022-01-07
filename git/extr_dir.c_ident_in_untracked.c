
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct untracked_cache {TYPE_1__ ident; } ;


 int get_ident_string () ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int ident_in_untracked(const struct untracked_cache *uc)
{






 return !strcmp(uc->ident.buf, get_ident_string());
}
