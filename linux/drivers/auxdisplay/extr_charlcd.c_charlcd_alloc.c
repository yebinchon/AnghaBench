
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct charlcd {int ifwidth; int drvdata; int hwidth; int bwidth; } ;
struct TYPE_2__ {int len; } ;
struct charlcd_priv {int drvdata; struct charlcd lcd; TYPE_1__ esc_seq; } ;


 int DEFAULT_LCD_BWIDTH ;
 int DEFAULT_LCD_HWIDTH ;
 int GFP_KERNEL ;
 struct charlcd_priv* kzalloc (int,int ) ;

struct charlcd *charlcd_alloc(unsigned int drvdata_size)
{
 struct charlcd_priv *priv;
 struct charlcd *lcd;

 priv = kzalloc(sizeof(*priv) + drvdata_size, GFP_KERNEL);
 if (!priv)
  return ((void*)0);

 priv->esc_seq.len = -1;

 lcd = &priv->lcd;
 lcd->ifwidth = 8;
 lcd->bwidth = DEFAULT_LCD_BWIDTH;
 lcd->hwidth = DEFAULT_LCD_HWIDTH;
 lcd->drvdata = priv->drvdata;

 return lcd;
}
