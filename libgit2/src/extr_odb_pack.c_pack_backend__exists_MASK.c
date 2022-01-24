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
struct pack_backend {int dummy; } ;
struct git_pack_entry {int dummy; } ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_backend ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct git_pack_entry*,struct pack_backend*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1(git_odb_backend *backend, const git_oid *oid)
{
	struct git_pack_entry e;
	return FUNC0(&e, (struct pack_backend *)backend, oid) == 0;
}