
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int predicate ;
typedef int data ;


 int MAX_RESULT ;
 int assert (int ) ;
 int data_slice (int *,int ,int,int) ;
 int data_slice_filtered (int *,int ,int,int,int *) ;
 int result_obj ;

inline int user_get (data *d, int n, int offset, predicate *pred) {
  assert (d != ((void*)0));
  if (n > MAX_RESULT) {
    n = MAX_RESULT;
  }

  if (pred == ((void*)0)) {
    return data_slice (d, result_obj, n, offset);
  } else {
    return data_slice_filtered (d, result_obj, n, offset, pred);
  }
}
