
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
typedef int predicate ;
typedef int data ;


 int MAX_RESULT ;
 int assert (int ) ;
 int data_slice (int *,int ,int ,int ) ;
 int data_slice_filtered (int *,int ,int ,int ,int *) ;
 int result_obj ;
 int * user_get_album_data (int *) ;
 int user_loaded (int *) ;

int user_get_albums_count_pred (user *u, predicate *pred) {


  assert (user_loaded (u));
  data *d = user_get_album_data (u);

  if (pred == ((void*)0)) {
    return data_slice (d, result_obj, MAX_RESULT, 0);
  } else {
    return data_slice_filtered (d, result_obj, MAX_RESULT, 0, pred);
  }
}
