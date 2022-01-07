
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int base64url_encode (unsigned char*,int,char*,int) ;

__attribute__((used)) static void secret_to_base64url (unsigned long long secret, char output[12]) {
  int r = base64url_encode ((unsigned char *) &secret, 8, output, 12);
  assert (!r);
}
