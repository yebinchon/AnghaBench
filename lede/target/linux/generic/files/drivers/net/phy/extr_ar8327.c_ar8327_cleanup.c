
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int dummy; } ;


 int ar8327_leds_cleanup (struct ar8xxx_priv*) ;

__attribute__((used)) static void
ar8327_cleanup(struct ar8xxx_priv *priv)
{
 ar8327_leds_cleanup(priv);
}
