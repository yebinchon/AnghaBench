
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decNumber ;


 int decToString (int const*,char*,int) ;

char * decNumberToEngString(const decNumber *dn, char *string){
  decToString(dn, string, 1);
  return string;
  }
