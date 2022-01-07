
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {struct mvswitch_priv* priv; } ;
struct mvswitch_priv {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mvswitch_priv* kzalloc (int,int ) ;

__attribute__((used)) static int
mvswitch_probe(struct phy_device *pdev)
{
 struct mvswitch_priv *priv;

 priv = kzalloc(sizeof(struct mvswitch_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return -ENOMEM;

 pdev->priv = priv;

 return 0;
}
