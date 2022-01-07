
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int textbuf_t ;
typedef char* nbuf ;


 int textbuf_append_string (int *,char*,size_t) ;

__attribute__((used)) static void
textbuf_append_uint64(textbuf_t* buf, uint64_t n) {

    char nbuf[20];
    char* pos = (nbuf) + 20;

    do {
        pos--;
        uint64_t m = n % 10;
        n /= 10;
        *pos = (char)('0' + m);
    } while( n != 0 );

    textbuf_append_string(buf, pos, (size_t)(nbuf - pos + 20));
}
