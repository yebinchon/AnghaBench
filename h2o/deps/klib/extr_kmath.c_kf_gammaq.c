
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double _kf_gammap (double,double) ;
 double _kf_gammaq (double,double) ;

double kf_gammaq(double s, double z)
{
 return z <= 1. || z < s? 1. - _kf_gammap(s, z) : _kf_gammaq(s, z);
}
