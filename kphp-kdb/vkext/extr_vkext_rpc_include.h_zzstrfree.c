
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_FREE (int ) ;
 int free (char*) ;
 int strlen (char*) ;

__attribute__((used)) static inline void zzstrfree (char *p) {
  if (!p) { return;}
  ADD_FREE (strlen (p));
  free (p);
}
