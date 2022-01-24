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
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  fake_backend ;

/* Variables and functions */
 int /*<<< orphan*/ * _fake ; 
 int /*<<< orphan*/  _objects ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	git_odb *odb = NULL;
	git_odb_backend *backend = NULL;

	_repo = FUNC2("testrepo.git");

	FUNC1(FUNC0(&backend, _objects));

	FUNC1(FUNC4(&odb, _repo));
	FUNC1(FUNC3(odb, backend, 10));

	_fake = (fake_backend *)backend;
}