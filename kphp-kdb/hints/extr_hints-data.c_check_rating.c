
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rating ;


 scalar_t__ MAX_RATING ;
 scalar_t__ fabsf (scalar_t__) ;
 scalar_t__ fading ;

int check_rating (rating val) {
  if (fading) {
    return val >= 0;
  } else {
    return fabsf (val) < MAX_RATING;
  }
}
