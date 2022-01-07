
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int tl_store_string (char const*,int ) ;

__attribute__((used)) static inline int tl_store_string0 (const char *s) {
  return tl_store_string (s, strlen (s));
}
