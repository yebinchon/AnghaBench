
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int apei_write_mce(struct mce *m)
{
 return -EINVAL;
}
