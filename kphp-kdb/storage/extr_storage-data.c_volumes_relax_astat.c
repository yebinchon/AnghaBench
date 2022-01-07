
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double M_LN2 ;
 int * Volumes ;
 double exp (double) ;
 int now ;
 int volume_relax_astat (int ,double) ;
 int volumes ;

__attribute__((used)) static void volumes_relax_astat (void) {
  static int last_call_time = 0;
  double e = last_call_time ? exp ((-M_LN2 / 86400.0) * (now - last_call_time)) : 0.0;
  int i;
  for (i = 0; i < volumes; i++) {
    volume_relax_astat (Volumes[i], e);
  }
  last_call_time = now;
}
