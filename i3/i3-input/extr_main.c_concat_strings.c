
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int memcpy (char*,char*,int) ;
 int printf (char*,...) ;
 char* scalloc (int,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static uint8_t *concat_strings(char **glyphs, int max) {
    uint8_t *output = scalloc(max + 1, 4);
    uint8_t *walk = output;
    for (int c = 0; c < max; c++) {
        printf("at %c\n", glyphs[c][0]);

        if (glyphs[c][0] == '\0') {
            memcpy(walk, glyphs[c], 2);
            walk += 2;
        } else {
            strcpy((char *)walk, glyphs[c]);
            walk += strlen(glyphs[c]);
        }
    }
    printf("output = %s\n", output);
    return output;
}
