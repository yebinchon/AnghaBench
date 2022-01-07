
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEYWORDHASH_SIZE ;

int KeywordHash_Key(char *keyword) {
 int hash, i;

 hash = 0;
 for (i = 0; keyword[i] != '\0'; i++) {
  if (keyword[i] >= 'A' && keyword[i] <= 'Z')
   hash += (keyword[i] + ('a' - 'A')) * (119 + i);
  else
   hash += keyword[i] * (119 + i);
 }
 hash = (hash ^ (hash >> 10) ^ (hash >> 20)) & (KEYWORDHASH_SIZE-1);
 return hash;
}
