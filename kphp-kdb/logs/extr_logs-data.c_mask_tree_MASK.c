#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; long long v_fid; } ;
struct TYPE_5__ {int vn; struct TYPE_5__** v; TYPE_1__ tok; } ;
typedef  TYPE_2__ node ;

/* Variables and functions */
 scalar_t__ t_fid ; 

long long FUNC0 (node *v) {
  if (v == NULL) {
    return 0;
  }
  long long res = 0;
  if (v->tok.type == t_fid) {
    if (v->tok.v_fid >= 0) {
      res |= 1ll << v->tok.v_fid;
    }
  }
  int i;
  for (i = 0; i < v->vn; i++) {
    res |= FUNC0 (v->v[i]);
  }

  return res;
}