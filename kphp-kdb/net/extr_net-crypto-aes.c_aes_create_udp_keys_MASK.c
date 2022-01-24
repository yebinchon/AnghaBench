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
typedef  int process_id ;
struct aes_key_data {scalar_t__ read_iv; scalar_t__ read_key; scalar_t__ write_iv; scalar_t__ write_key; } ;

/* Variables and functions */
 int MAX_PWD_LEN ; 
 int MIN_PWD_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int* pwd_buf ; 
 int pwd_len ; 

int FUNC5 (struct aes_key_data *R, struct process_id *local_pid, struct process_id *remote_pid, int generation) {
  unsigned char str[16+16+4+4+2+6+4+2+MAX_PWD_LEN+16+16+4+16*2];
  int str_len;

  if (!pwd_len) {
    return -1;
  }

  FUNC1 (pwd_len >= MIN_PWD_LEN && pwd_len <= MAX_PWD_LEN);

  FUNC3 (str, local_pid, 12);
  FUNC3 (str + 12, pwd_buf, pwd_len);  
  FUNC3 (str + 12 + pwd_len, remote_pid, 12);
  FUNC3 (str + 24 + pwd_len, &generation, 4);
  str_len = 28 + pwd_len;

  FUNC2 (str + 3, str_len - 3, R->write_key);
  FUNC0 (str, str_len, R->write_key + 12);
  FUNC2 (str + 5, str_len - 5, R->write_iv);

  
  FUNC3 (str, remote_pid, 12);
  FUNC3 (str + 12 + pwd_len, local_pid, 12);

  FUNC2 (str + 3, str_len - 3, R->read_key);
  FUNC0 (str, str_len, R->read_key + 12);
  FUNC2 (str + 5, str_len - 5, R->read_iv);

  FUNC4 (str, 0, str_len);

  return 1;
}