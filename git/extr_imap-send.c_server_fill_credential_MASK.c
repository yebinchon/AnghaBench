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
struct imap_server_conf {char* host; void* pass; void* user; scalar_t__ use_ssl; } ;
struct credential {char* username; char* password; void* host; void* protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct credential*) ; 
 void* FUNC1 (char*) ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(struct imap_server_conf *srvc, struct credential *cred)
{
	if (srvc->user && srvc->pass)
		return;

	cred->protocol = FUNC1(srvc->use_ssl ? "imaps" : "imap");
	cred->host = FUNC1(srvc->host);

	cred->username = FUNC2(srvc->user);
	cred->password = FUNC2(srvc->pass);

	FUNC0(cred);

	if (!srvc->user)
		srvc->user = FUNC1(cred->username);
	if (!srvc->pass)
		srvc->pass = FUNC1(cred->password);
}