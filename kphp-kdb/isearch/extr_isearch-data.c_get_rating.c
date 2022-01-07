
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A ;
 int B ;
 int diff ;
 scalar_t__ is_letter (int) ;
 int len ;
 float logf (float) ;
 float** prob ;
 float* ratings ;
 scalar_t__ translit ;
 scalar_t__ try ;

float get_rating (const int a) {
  float res = logf (ratings[a] + 1.0f) / logf (2.0f);

  if (translit) {
    res /= 1.3;
  }

  if (diff != -1) {
    res *= (diff + 2 * len + 1);
    res /= (6 * len + 3);

    if (len <= 6) {
      res /= (7 - len);
    }
  }

  if (try) {
    res /= 10;

    if (translit) {
      res /= 2;
    }
  }

  return res;
}
