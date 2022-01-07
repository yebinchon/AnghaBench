
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xfeature_is_supervisor (int) ;

__attribute__((used)) static int xfeature_is_user(int xfeature_nr)
{
 return !xfeature_is_supervisor(xfeature_nr);
}
