
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feature {char a; char b; char c; char d; } ;



__attribute__((used)) static struct feature mkkey(char a, char b, char c, char d)
{
 struct feature f;

 f.a = a;
 f.b = b;
 f.c = c;
 f.d = d;
 return f;
}
