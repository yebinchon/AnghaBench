
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HASH_METHOD_X2 ;
 unsigned int strhash (char const*) ;

__attribute__((used)) static unsigned int hash(unsigned int method, unsigned int i, const char *key)
{
 unsigned int hash = 0;
 switch (method & 3)
 {
 case 130:
  hash = strhash(key);
  break;
 case 129:
  hash = i;
  break;
 case 128:
  hash = i / 10;
  break;
 case 131:
  hash = 0;
  break;
 }

 if (method & HASH_METHOD_X2)
  hash = 2 * hash;
 return hash;
}
