
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int dummy; } ;


 int AR8327_VTU_FUNC1_OP_FLUSH ;
 int ar8327_vtu_op (struct ar8xxx_priv*,int ,int ) ;

__attribute__((used)) static void
ar8327_vtu_flush(struct ar8xxx_priv *priv)
{
 ar8327_vtu_op(priv, AR8327_VTU_FUNC1_OP_FLUSH, 0);
}
