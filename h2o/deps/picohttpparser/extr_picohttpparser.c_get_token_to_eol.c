
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ranges1 ;


 int CHECK_EOF () ;
 int DOIT () ;
 int EXPECT_CHAR (char) ;
 int IS_PRINTABLE_ASCII (char const) ;
 char* findchar_fast (char const*,char const*,char const*,int,int*) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static const char *get_token_to_eol(const char *buf, const char *buf_end, const char **token, size_t *token_len, int *ret)
{
    const char *token_start = buf;
    while (likely(buf_end - buf >= 8)) {






        do { if (unlikely(!IS_PRINTABLE_ASCII(*buf))) goto NonPrintable; ++buf; } while (0);
        do { if (unlikely(!IS_PRINTABLE_ASCII(*buf))) goto NonPrintable; ++buf; } while (0);
        do { if (unlikely(!IS_PRINTABLE_ASCII(*buf))) goto NonPrintable; ++buf; } while (0);
        do { if (unlikely(!IS_PRINTABLE_ASCII(*buf))) goto NonPrintable; ++buf; } while (0);
        do { if (unlikely(!IS_PRINTABLE_ASCII(*buf))) goto NonPrintable; ++buf; } while (0);
        do { if (unlikely(!IS_PRINTABLE_ASCII(*buf))) goto NonPrintable; ++buf; } while (0);
        do { if (unlikely(!IS_PRINTABLE_ASCII(*buf))) goto NonPrintable; ++buf; } while (0);
        do { if (unlikely(!IS_PRINTABLE_ASCII(*buf))) goto NonPrintable; ++buf; } while (0);

        continue;
    NonPrintable:
        if ((likely((unsigned char)*buf < '\040') && likely(*buf != '\011')) || unlikely(*buf == '\177')) {
            goto FOUND_CTL;
        }
        ++buf;
    }

    for (;; ++buf) {
        CHECK_EOF();
        if (unlikely(!IS_PRINTABLE_ASCII(*buf))) {
            if ((likely((unsigned char)*buf < '\040') && likely(*buf != '\011')) || unlikely(*buf == '\177')) {
                goto FOUND_CTL;
            }
        }
    }
FOUND_CTL:
    if (likely(*buf == '\015')) {
        ++buf;
        EXPECT_CHAR('\012');
        *token_len = buf - 2 - token_start;
    } else if (*buf == '\012') {
        *token_len = buf - token_start;
        ++buf;
    } else {
        *ret = -1;
        return ((void*)0);
    }
    *token = token_start;

    return buf;
}
