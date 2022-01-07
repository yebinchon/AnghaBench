
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int dummy; } ;


 int AR8216_ATU_ACTIVE ;
 int AR8216_ATU_OP_FLUSH ;
 int AR8216_REG_ATU_FUNC0 ;
 int ar8216_wait_bit (struct ar8xxx_priv*,int ,int,int ) ;
 int ar8xxx_write (struct ar8xxx_priv*,int ,int) ;

__attribute__((used)) static int
ar8216_atu_flush(struct ar8xxx_priv *priv)
{
 int ret;

 ret = ar8216_wait_bit(priv, AR8216_REG_ATU_FUNC0, AR8216_ATU_ACTIVE, 0);
 if (!ret)
  ar8xxx_write(priv, AR8216_REG_ATU_FUNC0, AR8216_ATU_OP_FLUSH |
        AR8216_ATU_ACTIVE);

 return ret;
}
