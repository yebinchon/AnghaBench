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
 unsigned long long MEMLIMIT ; 
 int OPSLIMIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned long long,char*,size_t,unsigned char const*,unsigned long long,size_t,int /*<<< orphan*/ ) ; 
 int crypto_pwhash_SALTBYTES ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (unsigned char*,int,char*,int,unsigned char*,int,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(void)
{
    static struct {
        const char *       passwd_hex;
        size_t             passwd_len;
        const char *       salt_hex;
        size_t             outlen;
        unsigned long long opslimit;
        size_t             memlimit;
        unsigned int       lanes;
    } tests[] = {
        { "a347ae92bce9f80f6f595a4480fc9c2fe7e7d7148d371e9487d75f5c23008ffae0"
          "65577a928febd9b1973a5a95073acdbeb6a030cfc0d79caa2dc5cd011cef02c08d"
          "a232d76d52dfbca38ca8dcbd665b17d1665f7cf5fe59772ec909733b24de97d6f5"
          "8d220b20c60d7c07ec1fd93c52c31020300c6c1facd77937a597c7a6",
          127,
          "5541fbc995d5c197ba290346d2c559dedf405cf97e5f95482143202f9e74f5c2",
          155, 4, 397645, 1 },
        { "a347ae92bce9f80f6f595a4480fc9c2fe7e7d7148d371e9487d75f5c23008ffae0"
          "65577a928febd9b1973a5a95073acdbeb6a030cfc0d79caa2dc5cd011cef02c08d"
          "a232d76d52dfbca38ca8dcbd665b17d1665f7cf5fe59772ec909733b24de97d6f5"
          "8d220b20c60d7c07ec1fd93c52c31020300c6c1facd77937a597c7a6",
          127,
          "5541fbc995d5c197ba290346d2c559dedf405cf97e5f95482143202f9e74f5c2",
          155, 3, 397645, 1 },
    };
    char          passwd[256];
    unsigned char salt[crypto_pwhash_SALTBYTES];
    unsigned char out[256];
    char          out_hex[256 * 2 + 1];
    size_t        i = 0U;

    do {
        FUNC8((unsigned char *) passwd, sizeof passwd,
                       tests[i].passwd_hex, FUNC9(tests[i].passwd_hex), NULL,
                       NULL, NULL);
        FUNC8(salt, sizeof salt, tests[i].salt_hex,
                       FUNC9(tests[i].salt_hex), NULL, NULL, NULL);
        if (FUNC1(out, (unsigned long long) tests[i].outlen, passwd,
                          tests[i].passwd_len, (const unsigned char *) salt,
                          tests[i].opslimit, tests[i].memlimit,
                          FUNC3()) != 0) {
            FUNC6("[tv2] pwhash failure: [%u]\n", (unsigned int) i);
            continue;
        }
        FUNC7(out_hex, sizeof out_hex, out, tests[i].outlen);
        FUNC6("%s\n", out_hex);
    } while (++i < (sizeof tests) / (sizeof tests[0]));

    if (FUNC4(out, sizeof out, "password", FUNC9("password"), salt, 3,
                               1ULL << 12, 0) != -1) {
        FUNC6("[tv2] pwhash should have failed (0)\n");
    }
    if (FUNC4(out, sizeof out, "password", FUNC9("password"), salt, 3,
                               1, FUNC5()) != -1) {
        FUNC6("[tv2] pwhash should have failed (1)\n");
    }
    if (FUNC4(out, sizeof out, "password", FUNC9("password"), salt, 3,
                               1ULL << 12, FUNC5()) != -1) {
        FUNC6("[tv2] pwhash should have failed (2)\n");
    }
    if (FUNC4(out, sizeof out, "password", FUNC9("password"), salt, 2,
                               1ULL << 12, FUNC5()) != -1) {
        FUNC6("[tv2] pwhash should have failed (3)\n");
    }
    if (FUNC4(out, 15, "password", FUNC9("password"), salt, 3,
                               1ULL << 12, FUNC5()) != -1) {
        FUNC6("[tv2] pwhash with a short output length should have failed\n");
    }
    if (FUNC4(out, sizeof out, "password", 0x100000000ULL, salt, 3,
                               1ULL << 12, FUNC5()) != -1) {
        FUNC6("[tv2] pwhash with a long password length should have failed\n");
    }
    FUNC0(FUNC4(out, sizeof out, "password", FUNC9("password"), salt,
                                  OPSLIMIT, MEMLIMIT, FUNC2()) == -1);
}