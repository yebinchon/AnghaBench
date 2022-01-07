
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct adm6996_priv {int (* read ) (struct adm6996_priv*,int) ;} ;
typedef enum admreg { ____Placeholder_admreg } admreg ;


 int stub1 (struct adm6996_priv*,int) ;

__attribute__((used)) static inline u16
r16(struct adm6996_priv *priv, enum admreg reg)
{
 return priv->read(priv, reg);
}
