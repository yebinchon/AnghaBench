
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int item_t ;


 int Q_type ;
 int get_rate_item_fast (int *,int ) ;

__attribute__((used)) static int get_rating (item_t *I, int priority) {
  return get_rate_item_fast (I, Q_type);
}
