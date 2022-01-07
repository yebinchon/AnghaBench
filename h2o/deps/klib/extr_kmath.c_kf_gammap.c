
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double _kf_gammap (double,double) ;
 double _kf_gammaq (double,double) ;

double kf_gammap(double s, double z)
{
 return z <= 1. || z < s? _kf_gammap(s, z) : 1. - _kf_gammaq(s, z);
}
