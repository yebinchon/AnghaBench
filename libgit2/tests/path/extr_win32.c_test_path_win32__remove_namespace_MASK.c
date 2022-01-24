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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

void FUNC1(void)
{
	FUNC0(L"\\\\?\\C:\\Temp\\Foo", L"C:\\Temp\\Foo");
	FUNC0(L"\\\\?\\C:\\", L"C:\\");
	FUNC0(L"\\\\?\\", L"");

	FUNC0(L"\\??\\C:\\Temp\\Foo", L"C:\\Temp\\Foo");
	FUNC0(L"\\??\\C:\\", L"C:\\");
	FUNC0(L"\\??\\", L"");

	FUNC0(L"\\\\?\\UNC\\server\\C$\\folder", L"\\\\server\\C$\\folder");
	FUNC0(L"\\\\?\\UNC\\server\\C$\\folder", L"\\\\server\\C$\\folder");
	FUNC0(L"\\\\?\\UNC\\server\\C$", L"\\\\server\\C$");
	FUNC0(L"\\\\?\\UNC\\server\\", L"\\\\server");
	FUNC0(L"\\\\?\\UNC\\server", L"\\\\server");

	FUNC0(L"\\??\\UNC\\server\\C$\\folder", L"\\\\server\\C$\\folder");
	FUNC0(L"\\??\\UNC\\server\\C$\\folder", L"\\\\server\\C$\\folder");
	FUNC0(L"\\??\\UNC\\server\\C$", L"\\\\server\\C$");
	FUNC0(L"\\??\\UNC\\server\\", L"\\\\server");
	FUNC0(L"\\??\\UNC\\server", L"\\\\server");

	FUNC0(L"\\\\server\\C$\\folder", L"\\\\server\\C$\\folder");
	FUNC0(L"\\\\server\\C$", L"\\\\server\\C$");
	FUNC0(L"\\\\server\\", L"\\\\server");
	FUNC0(L"\\\\server", L"\\\\server");

	FUNC0(L"C:\\Foo\\Bar", L"C:\\Foo\\Bar");
	FUNC0(L"C:\\", L"C:\\");
	FUNC0(L"", L"");

}