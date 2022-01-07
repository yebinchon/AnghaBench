
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache {int ident; } ;


 int get_ident_string () ;
 int strbuf_addch (int *,int ) ;
 int strbuf_addstr (int *,int ) ;
 int strbuf_reset (int *) ;

__attribute__((used)) static void set_untracked_ident(struct untracked_cache *uc)
{
 strbuf_reset(&uc->ident);
 strbuf_addstr(&uc->ident, get_ident_string());





 strbuf_addch(&uc->ident, 0);
}
