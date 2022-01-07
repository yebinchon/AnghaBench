
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int comment_t ;


 int COMM_MODE ;
 int assert (int ) ;
 int comments_kept ;
 int * zmalloc0 (int) ;

__attribute__((used)) static comment_t *new_comment (void) {
  assert (COMM_MODE);
  comments_kept++;
  return zmalloc0 (sizeof (comment_t));
}
