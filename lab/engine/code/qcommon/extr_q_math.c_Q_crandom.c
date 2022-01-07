
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double Q_random (int*) ;

float Q_crandom( int *seed ) {
 return 2.0 * ( Q_random( seed ) - 0.5 );
}
