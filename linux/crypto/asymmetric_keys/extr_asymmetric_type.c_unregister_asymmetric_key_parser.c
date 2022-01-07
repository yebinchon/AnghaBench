
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asymmetric_key_parser {int name; int link; } ;


 int asymmetric_key_parsers_sem ;
 int down_write (int *) ;
 int list_del (int *) ;
 int pr_notice (char*,int ) ;
 int up_write (int *) ;

void unregister_asymmetric_key_parser(struct asymmetric_key_parser *parser)
{
 down_write(&asymmetric_key_parsers_sem);
 list_del(&parser->link);
 up_write(&asymmetric_key_parsers_sem);

 pr_notice("Asymmetric key parser '%s' unregistered\n", parser->name);
}
