
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regex {struct regex* extra; struct regex* regex; struct regex* pattern; } ;


 int FREE (struct regex*) ;

void regex_free(struct regex *regex) {
    if (!regex)
        return;
    FREE(regex->pattern);
    FREE(regex->regex);
    FREE(regex->extra);
    FREE(regex);
}
