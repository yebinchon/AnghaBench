#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct forth_request {struct forth_request* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct forth_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct forth_request*,struct forth_request*) ; 
 struct forth_request with_output_free_list ; 
 struct forth_request without_output_free_list ; 

__attribute__((used)) static struct forth_request *FUNC2 () {
  struct forth_request *E = without_output_free_list.next;
  if (E == &without_output_free_list) {
    E = with_output_free_list.next;
    if (E == &with_output_free_list) {
      return NULL;
    }
    FUNC0 (E);
  }
  FUNC1 (&without_output_free_list, E);
  return E;
}