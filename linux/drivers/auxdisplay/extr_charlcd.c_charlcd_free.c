
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charlcd {int dummy; } ;


 int charlcd_to_priv (struct charlcd*) ;
 int kfree (int ) ;

void charlcd_free(struct charlcd *lcd)
{
 kfree(charlcd_to_priv(lcd));
}
