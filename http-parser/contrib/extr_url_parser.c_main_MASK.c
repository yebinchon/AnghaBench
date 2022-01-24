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
struct http_parser_url {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct http_parser_url*) ; 
 int FUNC1 (char*,int,int,struct http_parser_url*) ; 
 int /*<<< orphan*/  FUNC2 (struct http_parser_url*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

int FUNC6(int argc, char ** argv) {
  struct http_parser_url u;
  int len, connect, result;

  if (argc != 3) {
    FUNC3("Syntax : %s connect|get url\n", argv[0]);
    return 1;
  }
  len = FUNC5(argv[2]);
  connect = FUNC4("connect", argv[1]) == 0 ? 1 : 0;
  FUNC3("Parsing %s, connect %d\n", argv[2], connect);

  FUNC2(&u);
  result = FUNC1(argv[2], len, connect, &u);
  if (result != 0) {
    FUNC3("Parse error : %d\n", result);
    return result;
  }
  FUNC3("Parse ok, result : \n");
  FUNC0(argv[2], &u);
  return 0;
}