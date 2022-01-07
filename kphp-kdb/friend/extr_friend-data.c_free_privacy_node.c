
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int privacy_t ;


 scalar_t__ compute_privacy_len (int *) ;
 int compute_privacy_size (int *) ;
 int privacy_nodes ;
 int tot_privacy_len ;
 int zfree (int *,int ) ;

__attribute__((used)) static void free_privacy_node (privacy_t *T) {
  tot_privacy_len -= compute_privacy_len (T);
  privacy_nodes--;
  zfree (T, compute_privacy_size(T));
}
