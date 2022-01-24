#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct union_iterator {void** H; } ;
struct intersection_condition_iterator {void** A; void* Cond; } ;
struct TYPE_12__ {int type; int flags; scalar_t__ value; scalar_t__ value2; int hash; int hash2; struct TYPE_12__* left; struct TYPE_12__* right; struct TYPE_12__* last; } ;
typedef  TYPE_1__ query_t ;
typedef  void* iterator_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  aux_userlist ; 
 int /*<<< orphan*/  aux_userlist_size ; 
 void* FUNC6 (void*,void*) ; 
 void* FUNC7 (void*,void*) ; 
 void* FUNC8 (void*,void*) ; 
 void* FUNC9 (void*) ; 
 void* FUNC10 (void*,void*) ; 
 void* FUNC11 (TYPE_1__*,int) ; 
 void* FUNC12 (void*) ; 
 void* FUNC13 () ; 
 void* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC15 (scalar_t__,scalar_t__) ; 
 void* FUNC16 (void*) ; 
 void* FUNC17 (void*) ; 
 void* FUNC18 (void*) ; 
 void* FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 TYPE_1__* FUNC21 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 scalar_t__ FUNC23 (int) ; 
 void* FUNC24 (int) ; 
 int q_and ; 
 int q_false ; 
 int q_id ; 
 int q_inlist ; 
 int q_name ; 
 int q_name_interests ; 
 int q_none ; 
 int q_or ; 

iterator_t FUNC25 (query_t *Q, int flags) {
  int op = Q->type;

  if (FUNC1 (Q)) {
    //    fprintf (stderr, "building condition iterator for subexpression ");
    //    print_query (Q);
    //    fprintf (stderr, "\n");
    return FUNC12 (FUNC11 (Q, flags & 1));
  }

  if (FUNC2 (Q)) {
    FUNC5 (!(Q->flags & 1));

    if (op == q_and || op == q_or) {
      query_t *A = Q;
      int N = 2, gray = 0, big = 0;
      while (A != Q->last) {
	A = A->right;
	N++;
      }
      if (op == q_or) {
	//	fprintf (stderr, "building OR iterator for chain of %d subiterators\n", N);
	if (N == 2) {
	  FUNC5 (FUNC2 (Q->left) && FUNC2 (Q->right));
	  return FUNC8 (FUNC25 (Q->left, flags), FUNC25 (Q->right, flags));
	}
	iterator_t I = FUNC24 (N);
	long i = 1;
	for (A = Q; i < N; A = A->right, i++) {
	  FUNC5 (FUNC2 (A->left));
	  ((struct union_iterator *) I)->H[i] = FUNC25 (A->left, flags);
	}
	FUNC5 (FUNC2 (A));
	((struct union_iterator *) I)->H[i] = FUNC25 (A, flags);
	return FUNC18 (I);
      }
      if (op == q_and) {
	if (FUNC1 (A->right)) {
	  gray++;
	  N--;
	} else if (FUNC0 (A->right)) {
	  big++;
	  N--;
	  if (FUNC1 (A->left)) {
	    gray++;
	    N--;
	  }
	}
	//	fprintf (stderr, "building AND iterator for chain of %d+%d+%d subiterators\n", N, gray, big);
	FUNC5 (N > 0);
	if (N == 1) {
	  FUNC5 (FUNC2 (Q->left));
	  if (big) {
	    FUNC22 (Q->right);
	    iterator_t I = FUNC7 (FUNC25 (Q->left, flags), FUNC25 (Q->right, flags));
	    FUNC22 (Q->right);
	    return I;
	  }
	  FUNC5 (FUNC1 (Q->right));
	  return FUNC10 (FUNC25 (Q->left, flags), FUNC11 (Q->right, flags & 1));
	}
	if (N == 2 && !big && !gray) {
	  FUNC5 (FUNC2 (Q->left) && FUNC2 (Q->right));
	  return FUNC6 (FUNC25 (Q->left, flags), FUNC25 (Q->right, flags));
	}
	struct intersection_condition_iterator *ICI = (void *) FUNC23 (N + big);
	long i = 0;
	for (A = Q; i < N - 1; A = A->right, i++) {
	  FUNC5 (FUNC2 (A->left));
	  ICI->A[i] = FUNC25 (A->left, flags);
	}
	if (!big && !gray) {
	  FUNC5 (FUNC2 (A));
	  ICI->A[i] = FUNC25 (A, flags);
	  return FUNC16 ((iterator_t) ICI);
	}
	FUNC5 (FUNC2 (A->left));
	ICI->A[i] = FUNC25 (A->left, flags);
	A = A->right;
	if (!big) {
	  ICI->Cond = FUNC11 (A, flags & 1);
	  return FUNC16 ((iterator_t) ICI);
	}
	if (gray) {
	  FUNC5 (FUNC1 (A->left));
	  ICI->Cond = FUNC11 (A->left, flags & 1);
	  A = A->right;
	}
	FUNC22 (A);
	ICI->A[N] = FUNC25 (A, flags);
	FUNC22 (A);
	return FUNC17 ((iterator_t) ICI);
      }
      FUNC5 (0);
    }
    if (op == q_false) {
      return FUNC13 ();
    }
    if (op == q_inlist) {
      return FUNC14 (aux_userlist, aux_userlist_size);
    }
    if (Q->flags & 24) {
      // numeric atom
      if (Q->type == q_id) {
	return FUNC15 (Q->value, Q->value2);
      }
      //      fprintf (stderr, "building numeric atom iterator for list %016llx\n", Q->hash);

      if (Q->flags & 16) {
	FUNC5 (Q->value == Q->value2);
      }
      FUNC5 (Q->hash);
      return FUNC19 (Q->hash);
    }
    if (Q->flags & 32) {
      // word atom
      if (Q->type == q_name) {
	return FUNC19 (Q->hash);
      } else if (Q->type == q_name_interests) {
	if (!FUNC20 (Q->hash2)) {
	  return FUNC19 (Q->hash);
	} else if (!FUNC20 (Q->hash)) {
	  return FUNC19 (Q->hash2);
	}
	return FUNC8 (FUNC19 (Q->hash), FUNC19 (Q->hash2));
      }
      //      fprintf (stderr, "building word atom iterator for list %016llx\n", Q->hash2);
      return FUNC19 (Q->hash2);
    }
    if (Q->flags & 2) {
      // quantifier
      if (Q->left->type == q_or && !(Q->left->flags & 1)) {
	// quantifier applied to OR chain, lift everything small
	//	fprintf (stderr, "sifting quantifiers in expression "); print_query (Q); fprintf (stderr, "\n");

	query_t *A = Q->left;
	while (A->type == q_or && !(A->flags & 1)) {
	  FUNC5 (FUNC3 (A->left));
	  A->left = FUNC4 (Q->type, A->left);
	  A = A->right;
	}
	FUNC5 (A == Q->left->last->right);
	FUNC5 (FUNC3 (A));
	Q->left->last->right = FUNC4 (Q->type, A);
	Q->type = q_none;

	//	fprintf (stderr, "resulting expression is "); print_query (Q->left); fprintf (stderr, "\n");

	return FUNC25 (Q->left, flags);
      }

      if (Q->left->flags & 56) {
	return FUNC25 (Q->left, flags);
      }

      FUNC5 (Q->left->type == q_and && !(Q->left->flags & 1));

      //      fprintf (stderr, "lifting quantifiers in expression "); print_query (Q); fprintf (stderr, "\n");

      query_t *R = FUNC21 (Q->type, Q->left);

      //      fprintf (stderr, "resulting expression is "); if (R) { print_query (R); } fprintf (stderr, R ? "\n" : " TRUE\n");

      if (R) {
	return FUNC10 (FUNC25 (R, flags), FUNC11 (Q, flags & 1));
      }
      FUNC5 (0);
    }
    FUNC5 (0); 
  }
  if (FUNC0 (Q)) {
    FUNC22 (Q);
    iterator_t A = FUNC25 (Q, flags);
    FUNC22 (Q);
    return FUNC9 (A);
  }

  FUNC5 (0);
}