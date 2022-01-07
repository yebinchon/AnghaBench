
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;


 int ClientName (int,char*,int) ;
 int memmove (char*,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,char*,int) ;
 char* strstr (char*,char*) ;

char *EasyClientName(int client, char *buf, int size) {
 int i;
 char *str1, *str2, *ptr, c;
 char name[128] = {0};

 ClientName(client, name, sizeof(name));

 for (i = 0; name[i]; i++) name[i] &= 127;

 for (ptr = strstr(name, " "); ptr; ptr = strstr(name, " ")) {
  memmove(ptr, ptr+1, strlen(ptr+1)+1);
 }

 str1 = strstr(name, "[");
 str2 = strstr(name, "]");
 if (str1 && str2) {
  if (str2 > str1) memmove(str1, str2+1, strlen(str2+1)+1);
  else memmove(str2, str1+1, strlen(str1+1)+1);
 }

 if ((name[0] == 'm' || name[0] == 'M') &&
   (name[1] == 'r' || name[1] == 'R')) {
  memmove(name, name+2, strlen(name+2)+1);
 }

 ptr = name;
 while(*ptr) {
  c = *ptr;
  if ((c >= 'a' && c <= 'z') ||
    (c >= '0' && c <= '9') || c == '_') {
   ptr++;
  }
  else if (c >= 'A' && c <= 'Z') {
   *ptr += 'a' - 'A';
   ptr++;
  }
  else {
   memmove(ptr, ptr+1, strlen(ptr + 1)+1);
  }
 }
 strncpy(buf, name, size-1);
 buf[size-1] = '\0';
 return buf;
}
