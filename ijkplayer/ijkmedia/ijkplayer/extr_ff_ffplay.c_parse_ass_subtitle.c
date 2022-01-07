
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,size_t) ;
 char* strchr (char const*,char) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static size_t parse_ass_subtitle(const char *ass, char *output)
{
    char *tok = ((void*)0);
    tok = strchr(ass, ':'); if (tok) tok += 1;
    tok = strchr(tok, ','); if (tok) tok += 1;
    tok = strchr(tok, ','); if (tok) tok += 1;
    tok = strchr(tok, ','); if (tok) tok += 1;
    tok = strchr(tok, ','); if (tok) tok += 1;
    tok = strchr(tok, ','); if (tok) tok += 1;
    tok = strchr(tok, ','); if (tok) tok += 1;
    tok = strchr(tok, ','); if (tok) tok += 1;
    tok = strchr(tok, ','); if (tok) tok += 1;
    tok = strchr(tok, ','); if (tok) tok += 1;
    if (tok) {
        char *text = tok;
        size_t idx = 0;
        do {
            char *found = strstr(text, "\\N");
            if (found) {
                size_t n = found - text;
                memcpy(output+idx, text, n);
                output[idx + n] = '\n';
                idx = n + 1;
                text = found + 2;
            }
            else {
                size_t left_text_len = strlen(text);
                memcpy(output+idx, text, left_text_len);
                if (output[idx + left_text_len - 1] == '\n')
                    output[idx + left_text_len - 1] = '\0';
                else
                    output[idx + left_text_len] = '\0';
                break;
            }
        } while(1);
        return strlen(output) + 1;
    }
    return 0;
}
