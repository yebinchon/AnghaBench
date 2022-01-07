
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regex {int regex; int extra; int pattern; } ;


 int ELOG (char*,...) ;
 int PCRE_UCP ;
 int PCRE_UTF8 ;
 int pcre_compile2 (char const*,int,int*,char const**,int*,int *) ;
 int pcre_study (int ,int ,char const**) ;
 int regex_free (struct regex*) ;
 struct regex* scalloc (int,int) ;
 int sstrdup (char const*) ;

struct regex *regex_new(const char *pattern) {
    const char *error;
    int errorcode, offset;

    struct regex *re = scalloc(1, sizeof(struct regex));
    re->pattern = sstrdup(pattern);
    int options = PCRE_UTF8;


    options |= PCRE_UCP;
    while (!(re->regex = pcre_compile2(pattern, options, &errorcode, &error, &offset, ((void*)0)))) {


        if (errorcode == 32) {
            options &= ~PCRE_UTF8;
            continue;
        }
        ELOG("PCRE regular expression compilation failed at %d: %s\n",
             offset, error);
        regex_free(re);
        return ((void*)0);
    }
    re->extra = pcre_study(re->regex, 0, &error);



    if (error) {
        ELOG("PCRE regular expression studying failed: %s\n", error);
    }
    return re;
}
