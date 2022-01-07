
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct adm6996_priv {int (* write ) (struct adm6996_priv*,int,int ) ;} ;
typedef enum admreg { ____Placeholder_admreg } admreg ;


 int stub1 (struct adm6996_priv*,int,int ) ;

__attribute__((used)) static inline void
w16(struct adm6996_priv *priv, enum admreg reg, u16 val)
{
 priv->write(priv, reg, val);
}
