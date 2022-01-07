
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int comparel ;
 int comparer ;
 int qsort (int*,int,int,int ) ;

void prepare_list2_raw_new (int *data, int num) {
  assert (*data <= num);
  qsort (data + 1, *data, 8, comparel);
  int i;
  int cl = 0;
  for (i = 0; i < *data; i++) {
    if (i == 0 || data[2 * i + 1] != data[2 * i - 1]) {
      data[2 * cl + 1] = data[2 * i + 1];
      data[2 * cl + 2] = data[2 * i + 2];
      cl ++;
    } else {
      data[2 * cl] += data[2 * i + 2];
    }
  }
  *data = cl;
  qsort (data + 1, *data, 8, comparer);
}
