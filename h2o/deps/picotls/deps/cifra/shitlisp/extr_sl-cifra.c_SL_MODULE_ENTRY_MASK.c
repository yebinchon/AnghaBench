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
typedef  int /*<<< orphan*/  sl_symboltab ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aes_block_decrypt ; 
 int /*<<< orphan*/  aes_block_encrypt ; 
 int /*<<< orphan*/  hmac_sha224 ; 
 int /*<<< orphan*/  hmac_sha256 ; 
 int /*<<< orphan*/  hmac_sha384 ; 
 int /*<<< orphan*/  hmac_sha512 ; 
 int /*<<< orphan*/  pbkdf2_sha224 ; 
 int /*<<< orphan*/  pbkdf2_sha256 ; 
 int /*<<< orphan*/  sha224 ; 
 int /*<<< orphan*/  sha256 ; 
 int /*<<< orphan*/  sha384 ; 
 int /*<<< orphan*/  sha512 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int FUNC2(sl_symboltab *tab)
{
  FUNC0(FUNC1(tab, "aes-encrypt", aes_block_encrypt));
  FUNC0(FUNC1(tab, "aes-decrypt", aes_block_decrypt));
  FUNC0(FUNC1(tab, "sha224", sha224));
  FUNC0(FUNC1(tab, "sha256", sha256));
  FUNC0(FUNC1(tab, "sha384", sha384));
  FUNC0(FUNC1(tab, "sha512", sha512));
  FUNC0(FUNC1(tab, "hmac-sha224", hmac_sha224));
  FUNC0(FUNC1(tab, "hmac-sha256", hmac_sha256));
  FUNC0(FUNC1(tab, "hmac-sha384", hmac_sha384));
  FUNC0(FUNC1(tab, "hmac-sha512", hmac_sha512));
  FUNC0(FUNC1(tab, "pbkdf2-sha224", pbkdf2_sha224));
  FUNC0(FUNC1(tab, "pbkdf2-sha256", pbkdf2_sha256));
  return 0;
}