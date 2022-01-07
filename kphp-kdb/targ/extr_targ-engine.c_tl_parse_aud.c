
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_AD_AUD ;
 int tl_fetch_int_range (int ,int ) ;

int tl_parse_aud (void) {
  return tl_fetch_int_range (0, MAX_AD_AUD);
}
