
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double xoffLeft ;
 double xoffRight ;
 double yoffBottom ;
 double yoffTop ;

__attribute__((used)) static void graphSize(double clientWidth, double clientHeight, double *graphWidth, double *graphHeight)
{
 *graphWidth = clientWidth - xoffLeft - xoffRight;
 *graphHeight = clientHeight - yoffTop - yoffBottom;
}
