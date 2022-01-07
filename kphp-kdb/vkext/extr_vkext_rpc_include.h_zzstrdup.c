
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_MALLOC (int ) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static inline char *zzstrdup (const char *p) {
  if (!p) { return 0;}
  ADD_MALLOC (strlen (p));
  return strdup (p);
}
