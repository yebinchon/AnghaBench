
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regex {int pattern; int extra; int regex; } ;


 int ELOG (char*,int,int ,char const*) ;
 int LOG (char*,int ,char const*) ;
 int PCRE_ERROR_NOMATCH ;
 int pcre_exec (int ,int ,char const*,int ,int ,int ,int *,int ) ;
 int strlen (char const*) ;

bool regex_matches(struct regex *regex, const char *input) {
    int rc;



    if ((rc = pcre_exec(regex->regex, regex->extra, input, strlen(input), 0, 0, ((void*)0), 0)) == 0) {
        LOG("Regular expression \"%s\" matches \"%s\"\n",
            regex->pattern, input);
        return 1;
    }

    if (rc == PCRE_ERROR_NOMATCH) {
        LOG("Regular expression \"%s\" does not match \"%s\"\n",
            regex->pattern, input);
        return 0;
    }

    ELOG("PCRE error %d while trying to use regular expression \"%s\" on input \"%s\", see pcreapi(3)\n",
         rc, regex->pattern, input);
    return 0;
}
