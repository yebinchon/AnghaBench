#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int max_response; unsigned char* response; int /*<<< orphan*/  ctrl_fd; } ;
typedef  TYPE_1__ ftpaux_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 unsigned char* FUNC2 (unsigned char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(ftpaux_t *aux)
{
	unsigned char c;
	int n = 0;
	char *p;
	if (FUNC3(aux->ctrl_fd, 1) <= 0) return 0;
	while (FUNC1(aux->ctrl_fd, &c, 1)) { // FIXME: this is *VERY BAD* for unbuffered I/O
		if (n >= aux->max_response) {
			aux->max_response = aux->max_response? aux->max_response<<1 : 256;
			aux->response = FUNC2(aux->response, aux->max_response);
		}
		aux->response[n++] = c;
		if (c == '\n') {
			if (n >= 4 && FUNC0(aux->response[0]) && FUNC0(aux->response[1]) && FUNC0(aux->response[2])
				&& aux->response[3] != '-') break;
			n = 0;
			continue;
		}
	}
	if (n < 2) return -1;
	aux->response[n-2] = 0;
	return FUNC4(aux->response, &p, 0);
}