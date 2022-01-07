
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int skip_imap_list_l (char**,int ) ;

__attribute__((used)) static void skip_list(char **sp)
{
 skip_imap_list_l(sp, 0);
}
