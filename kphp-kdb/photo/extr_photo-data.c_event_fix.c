
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event ;


 int event_free (int *) ;

inline void event_fix (event **e, event *v) {
  if (*e != v && v != ((void*)0)) {
    event_free (*e);
    *e = v;
  }
}
