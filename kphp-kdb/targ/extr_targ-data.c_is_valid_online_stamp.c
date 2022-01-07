
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OLIST_COUNT ;
 int ocur_now ;

__attribute__((used)) static inline int is_valid_online_stamp (int ts) {
  return ocur_now && ts > ocur_now - OLIST_COUNT;
}
