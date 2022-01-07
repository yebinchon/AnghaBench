
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int comment_t ;


 int COMM_MODE ;
 int assert (int ) ;
 int comments_kept ;
 int zfree (int *,int) ;

__attribute__((used)) static void free_comment (comment_t *A) {
  assert (COMM_MODE);
  comments_kept--;
  zfree (A, sizeof (comment_t));
}
