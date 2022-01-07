
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {int arl_age_time; } ;


 int AR8216_ATU_CTRL_AGE_TIME ;
 int AR8216_ATU_CTRL_AGE_TIME_S ;
 int ar8xxx_age_time_val (int ) ;
 int ar8xxx_rmw (struct ar8xxx_priv*,int,int ,int) ;

__attribute__((used)) static inline void
ar8xxx_set_age_time(struct ar8xxx_priv *priv, int reg)
{
 u32 age_time = ar8xxx_age_time_val(priv->arl_age_time);
 ar8xxx_rmw(priv, reg, AR8216_ATU_CTRL_AGE_TIME, age_time << AR8216_ATU_CTRL_AGE_TIME_S);
}
