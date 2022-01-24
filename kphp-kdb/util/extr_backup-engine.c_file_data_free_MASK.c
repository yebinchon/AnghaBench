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
struct file_info {scalar_t__ tail_data; scalar_t__ head_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void FUNC1 (struct file_info *file) {
  if (file->head_data) {
    FUNC0 (file->head_data);
    file->head_data = 0;
  }
  if (file->tail_data) {
    FUNC0 (file->tail_data);
    file->tail_data = 0;
  }
}