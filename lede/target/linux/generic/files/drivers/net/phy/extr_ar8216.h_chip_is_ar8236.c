
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {scalar_t__ chip_ver; } ;


 scalar_t__ AR8XXX_VER_AR8236 ;

__attribute__((used)) static inline bool chip_is_ar8236(struct ar8xxx_priv *priv)
{
 return priv->chip_ver == AR8XXX_VER_AR8236;
}
