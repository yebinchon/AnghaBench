
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Q_limit ;
 scalar_t__ Q_order ;
 scalar_t__ Q_raw ;

__attribute__((used)) static inline void init_search_extras (void) {
  Q_order = Q_limit = Q_raw = 0;
}
