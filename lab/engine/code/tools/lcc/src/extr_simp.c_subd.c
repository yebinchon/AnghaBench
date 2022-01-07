
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addd (double,double,double,double,int) ;

__attribute__((used)) static int subd(double x, double y, double min, double max, int needconst) {
 return addd(x, -y, min, max, needconst);
}
