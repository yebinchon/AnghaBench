
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int genlabel(int n) {
 static int label = 1;

 label += n;
 return label - n;
}
