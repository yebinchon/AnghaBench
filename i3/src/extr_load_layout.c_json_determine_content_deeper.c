
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int content_level ;

__attribute__((used)) static int json_determine_content_deeper(void *ctx) {
    content_level++;
    return 1;
}
