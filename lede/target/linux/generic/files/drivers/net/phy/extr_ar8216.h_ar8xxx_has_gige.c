
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar8xxx_priv {TYPE_1__* chip; } ;
struct TYPE_2__ {int caps; } ;


 int AR8XXX_CAP_GIGE ;

__attribute__((used)) static inline bool ar8xxx_has_gige(struct ar8xxx_priv *priv)
{
 return priv->chip->caps & AR8XXX_CAP_GIGE;
}
