#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tl_type {int dummy; } ;
struct tl_combinator_tree {scalar_t__ type; int type_len; scalar_t__ act; long long type_flags; TYPE_1__* right; struct tl_combinator_tree* left; struct tl_type* data; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ type_len; } ;

/* Variables and functions */
 scalar_t__ act_arg ; 
 scalar_t__ act_type ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct tl_type*,int,long long) ; 
 scalar_t__ type_num ; 
 scalar_t__ type_num_value ; 
 scalar_t__ type_type ; 

int FUNC2 (struct tl_combinator_tree *R, int x, long long y) {
  FUNC0 (R->type == type_type);
  FUNC0 (R->type_len < 0);
  FUNC0 (R->act == act_arg || R->act == act_type);
  R->type_len = x;
  R->type_flags = y;
  if (R->act == act_type) {
    struct tl_type *t = R->data;
    FUNC0 (t);
    return FUNC1 (t, x, y);
  }
  FUNC0 ((R->right->type == type_type && R->right->type_len == 0) || R->right->type == type_num || R->right->type == type_num_value);
  return FUNC2 (R->left, x + 1, y * 2 + (R->right->type == type_num || R->right->type == type_num_value));
}