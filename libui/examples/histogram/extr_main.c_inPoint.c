
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double pointRadius ;
 scalar_t__ xoffLeft ;
 scalar_t__ yoffTop ;

__attribute__((used)) static int inPoint(double x, double y, double xtest, double ytest)
{

 x -= xoffLeft;
 y -= yoffTop;
 return (x >= xtest - pointRadius) &&
  (x <= xtest + pointRadius) &&
  (y >= ytest - pointRadius) &&
  (y <= ytest + pointRadius);
}
