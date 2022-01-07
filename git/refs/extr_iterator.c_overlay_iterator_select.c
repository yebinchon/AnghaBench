
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int refname; } ;
typedef enum iterator_selection { ____Placeholder_iterator_selection } iterator_selection ;


 int ITER_SELECT_0 ;
 int ITER_SELECT_0_SKIP_1 ;
 int ITER_SELECT_1 ;
 int ITER_SELECT_DONE ;
 int strcmp (int ,int ) ;

__attribute__((used)) static enum iterator_selection overlay_iterator_select(
  struct ref_iterator *front, struct ref_iterator *back,
  void *cb_data)
{
 int cmp;

 if (!back)
  return front ? ITER_SELECT_0 : ITER_SELECT_DONE;
 else if (!front)
  return ITER_SELECT_1;

 cmp = strcmp(front->refname, back->refname);

 if (cmp < 0)
  return ITER_SELECT_0;
 else if (cmp > 0)
  return ITER_SELECT_1;
 else
  return ITER_SELECT_0_SKIP_1;
}
