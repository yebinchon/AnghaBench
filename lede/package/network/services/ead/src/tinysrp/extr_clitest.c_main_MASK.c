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
typedef  int /*<<< orphan*/  username ;
struct t_preconf {int /*<<< orphan*/  generator; int /*<<< orphan*/  modulus; } ;
struct t_num {char* data; void* len; } ;
struct t_client {int dummy; } ;
typedef  int /*<<< orphan*/  hexbuf ;

/* Variables and functions */
 int MAXHEXPARAMLEN ; 
 int MAXPARAMLEN ; 
 int MAXSALTLEN ; 
 int MAXUSERLEN ; 
 int RESPONSE_LEN ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct t_client*) ; 
 struct t_num* FUNC6 (struct t_client*) ; 
 unsigned char* FUNC7 (struct t_client*,struct t_num*) ; 
 struct t_client* FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct t_num*) ; 
 int /*<<< orphan*/  FUNC9 (struct t_client*,char*) ; 
 unsigned char* FUNC10 (struct t_client*) ; 
 scalar_t__ FUNC11 (struct t_client*,unsigned char*) ; 
 void* FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*) ; 
 struct t_preconf* FUNC15 (int) ; 
 char* FUNC16 (char*,char*,void*) ; 
 char* FUNC17 (char*,unsigned char*,int) ; 

int
FUNC18()
{
  int index;
  struct t_client * tc;
  struct t_preconf *tcp;
  struct t_num s;
  struct t_num B;
  char username[MAXUSERLEN];
  char hexbuf[MAXHEXPARAMLEN];
  char buf1[MAXPARAMLEN], buf2[MAXPARAMLEN], buf3[MAXSALTLEN];
  unsigned char cbuf[20];
  struct t_num * A;
  unsigned char * skey;
  char pass[128];

  FUNC3("Enter username: ");
  FUNC2(username, sizeof(username), stdin);
  username[FUNC4(username) - 1] = '\0';
  FUNC3("Enter index (from server): ");
  FUNC2(hexbuf, sizeof(hexbuf), stdin);
  index = FUNC0(hexbuf);
  tcp = FUNC15(index - 1);
  FUNC3("Enter salt (from server): ");
  FUNC2(hexbuf, sizeof(hexbuf), stdin);
  s.data = buf3;
  s.len = FUNC12(s.data, hexbuf);

  tc = FUNC8(username, &tcp->modulus, &tcp->generator, &s);
  if (tc == 0) {
    FUNC3("invalid n, g\n");
    FUNC1(1);
  }

  A = FUNC6(tc);
  FUNC3("A (to server): %s\n", FUNC16(hexbuf, A->data, A->len));

  FUNC14(pass, 128, "Enter password:");
  FUNC9(tc, pass);

  FUNC3("Enter B (from server): ");
  FUNC2(hexbuf, sizeof(hexbuf), stdin);
  B.data = buf1;
  B.len = FUNC12(B.data, hexbuf);

  skey = FUNC7(tc, &B);
  FUNC3("Session key: %s\n", FUNC17(hexbuf, skey, 40));
  FUNC3("Response (to server): %s\n",
    FUNC17(hexbuf, FUNC10(tc), RESPONSE_LEN));

  FUNC3("Enter server response: ");
  FUNC2(hexbuf, sizeof(hexbuf), stdin);
  hexbuf[FUNC4(hexbuf) - 1] = '\0';
  FUNC13(cbuf, hexbuf);

  if (FUNC11(tc, cbuf) == 0)
    FUNC3("Server authentication successful.\n");
  else
    FUNC3("Server authentication failed.\n");

  FUNC5(tc);

  return 0;
}