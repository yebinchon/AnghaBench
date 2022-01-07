
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_L_VIEWS ;

__attribute__((used)) static int compute_projected_views (int audience) {
  if (audience <= 0) {
    return INIT_L_VIEWS;
  } else if (audience <= 1000) {
    return INIT_L_VIEWS * 8 / 10;
  } else if (audience <= 32000) {
    return INIT_L_VIEWS * 9 / 10;
  } else if (audience <= 12000000) {
    return INIT_L_VIEWS;
  } else if (audience <= 80000000) {
    return INIT_L_VIEWS * 12 / 10;
  } else {
    return INIT_L_VIEWS * 15 / 10;
  }
}
