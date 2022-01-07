
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* hl; int rsize; char* render; int idx; int size; int hl_oc; } ;
typedef TYPE_2__ erow ;
struct TYPE_8__ {int numrows; TYPE_2__* row; TYPE_1__* syntax; } ;
struct TYPE_6__ {char** keywords; char* singleline_comment_start; char* multiline_comment_start; char* multiline_comment_end; } ;


 TYPE_5__ E ;
 int HL_COMMENT ;
 int HL_KEYWORD1 ;
 int HL_KEYWORD2 ;
 void* HL_MLCOMMENT ;
 scalar_t__ HL_NONPRINT ;
 int HL_NORMAL ;
 scalar_t__ HL_NUMBER ;
 void* HL_STRING ;
 int editorRowHasOpenComment (TYPE_2__*) ;
 int is_separator (char) ;
 scalar_t__ isdigit (char) ;
 int isprint (char) ;
 scalar_t__ isspace (char) ;
 int memcmp (char*,char*,int) ;
 int memset (scalar_t__*,int ,int) ;
 scalar_t__* realloc (scalar_t__*,int) ;
 int strlen (char*) ;

void editorUpdateSyntax(erow *row) {
    row->hl = realloc(row->hl,row->rsize);
    memset(row->hl,HL_NORMAL,row->rsize);

    if (E.syntax == ((void*)0)) return;

    int i, prev_sep, in_string, in_comment;
    char *p;
    char **keywords = E.syntax->keywords;
    char *scs = E.syntax->singleline_comment_start;
    char *mcs = E.syntax->multiline_comment_start;
    char *mce = E.syntax->multiline_comment_end;


    p = row->render;
    i = 0;
    while(*p && isspace(*p)) {
        p++;
        i++;
    }
    prev_sep = 1;
    in_string = 0;
    in_comment = 0;



    if (row->idx > 0 && editorRowHasOpenComment(&E.row[row->idx-1]))
        in_comment = 1;

    while(*p) {

        if (prev_sep && *p == scs[0] && *(p+1) == scs[1]) {

            memset(row->hl+i,HL_COMMENT,row->size-i);
            return;
        }


        if (in_comment) {
            row->hl[i] = HL_MLCOMMENT;
            if (*p == mce[0] && *(p+1) == mce[1]) {
                row->hl[i+1] = HL_MLCOMMENT;
                p += 2; i += 2;
                in_comment = 0;
                prev_sep = 1;
                continue;
            } else {
                prev_sep = 0;
                p++; i++;
                continue;
            }
        } else if (*p == mcs[0] && *(p+1) == mcs[1]) {
            row->hl[i] = HL_MLCOMMENT;
            row->hl[i+1] = HL_MLCOMMENT;
            p += 2; i += 2;
            in_comment = 1;
            prev_sep = 0;
            continue;
        }


        if (in_string) {
            row->hl[i] = HL_STRING;
            if (*p == '\\') {
                row->hl[i+1] = HL_STRING;
                p += 2; i += 2;
                prev_sep = 0;
                continue;
            }
            if (*p == in_string) in_string = 0;
            p++; i++;
            continue;
        } else {
            if (*p == '"' || *p == '\'') {
                in_string = *p;
                row->hl[i] = HL_STRING;
                p++; i++;
                prev_sep = 0;
                continue;
            }
        }


        if (!isprint(*p)) {
            row->hl[i] = HL_NONPRINT;
            p++; i++;
            prev_sep = 0;
            continue;
        }


        if ((isdigit(*p) && (prev_sep || row->hl[i-1] == HL_NUMBER)) ||
            (*p == '.' && i >0 && row->hl[i-1] == HL_NUMBER)) {
            row->hl[i] = HL_NUMBER;
            p++; i++;
            prev_sep = 0;
            continue;
        }


        if (prev_sep) {
            int j;
            for (j = 0; keywords[j]; j++) {
                int klen = strlen(keywords[j]);
                int kw2 = keywords[j][klen-1] == '|';
                if (kw2) klen--;

                if (!memcmp(p,keywords[j],klen) &&
                    is_separator(*(p+klen)))
                {

                    memset(row->hl+i,kw2 ? HL_KEYWORD2 : HL_KEYWORD1,klen);
                    p += klen;
                    i += klen;
                    break;
                }
            }
            if (keywords[j] != ((void*)0)) {
                prev_sep = 0;
                continue;
            }
        }


        prev_sep = is_separator(*p);
        p++; i++;
    }




    int oc = editorRowHasOpenComment(row);
    if (row->hl_oc != oc && row->idx+1 < E.numrows)
        editorUpdateSyntax(&E.row[row->idx+1]);
    row->hl_oc = oc;
}
