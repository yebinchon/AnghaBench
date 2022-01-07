
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int len ;


 int memcpy (unsigned char*,int*,int) ;

int blist_encode_list (int *P, int len, int tot_items, unsigned char *res) {
  int r;
  memcpy (res, &len, r = sizeof (len));
  memcpy (res + sizeof (len), P, r += sizeof (*P) * len);
  return r;
}
