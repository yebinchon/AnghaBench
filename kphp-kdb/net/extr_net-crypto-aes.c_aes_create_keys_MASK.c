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
struct aes_key_data {scalar_t__ read_iv; scalar_t__ read_key; scalar_t__ write_iv; scalar_t__ write_key; } ;

/* Variables and functions */
 int MAX_PWD_LEN ; 
 int MIN_PWD_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,...) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 char* pwd_buf ; 
 int pwd_len ; 

int FUNC5 (struct aes_key_data *R, int am_client, char nonce_server[16], char nonce_client[16], int client_timestamp,
		     unsigned server_ip, unsigned short server_port, unsigned char server_ipv6[16], unsigned client_ip, unsigned short client_port, unsigned char client_ipv6[16]) {
  unsigned char str[16+16+4+4+2+6+4+2+MAX_PWD_LEN+16+16+4+16*2];
  int str_len;

  if (!pwd_len) {
    return -1;
  }

  FUNC1 (pwd_len >= MIN_PWD_LEN && pwd_len <= MAX_PWD_LEN);

  FUNC3 (str, nonce_server, 16);
  FUNC3 (str + 16, nonce_client, 16);
  *((int *) (str + 32)) = client_timestamp;
  *((unsigned *) (str + 36)) = server_ip;
  *((unsigned short *) (str + 40)) = client_port;
  FUNC3 (str + 42, am_client ? "Client" : "Server", 6);
  *((unsigned *) (str + 48)) = client_ip;
  *((unsigned short *) (str + 52)) = server_port;
  FUNC3 (str + 54, pwd_buf, pwd_len);
  FUNC3 (str + 54 + pwd_len, nonce_server, 16);
  str_len = 70 + pwd_len;

  if (!server_ip) {
    FUNC1 (!client_ip);
    FUNC3 (str + str_len, client_ipv6, 16);
    FUNC3 (str + str_len + 16, server_ipv6, 16);
    str_len += 32;
  } else {
    FUNC1 (client_ip);
  }

  FUNC3 (str + str_len, nonce_client, 16);
  str_len += 16;

  FUNC2 (str + 4, str_len - 4, R->write_key);
  FUNC0 (str, str_len, R->write_key + 12);
  FUNC2 (str + 2, str_len - 2, R->write_iv);

  FUNC3 (str + 42, !am_client ? "Client" : "Server", 6);

  FUNC2 (str + 4, str_len - 4, R->read_key);
  FUNC0 (str, str_len, R->read_key + 12);
  FUNC2 (str + 2, str_len - 2, R->read_iv);

  FUNC4 (str, 0, str_len);

  return 1;
}