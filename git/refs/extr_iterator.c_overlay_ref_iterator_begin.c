
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int ordered; } ;


 int BUG (char*) ;
 scalar_t__ is_empty_ref_iterator (struct ref_iterator*) ;
 struct ref_iterator* merge_ref_iterator_begin (int,struct ref_iterator*,struct ref_iterator*,int ,int *) ;
 int overlay_iterator_select ;
 int ref_iterator_abort (struct ref_iterator*) ;

struct ref_iterator *overlay_ref_iterator_begin(
  struct ref_iterator *front, struct ref_iterator *back)
{





 if (is_empty_ref_iterator(front)) {
  ref_iterator_abort(front);
  return back;
 } else if (is_empty_ref_iterator(back)) {
  ref_iterator_abort(back);
  return front;
 } else if (!front->ordered || !back->ordered) {
  BUG("overlay_ref_iterator requires ordered inputs");
 }

 return merge_ref_iterator_begin(1, front, back,
     overlay_iterator_select, ((void*)0));
}
