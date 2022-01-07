
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int Q_log2( int val ) {
 int answer;

 answer = 0;
 while ( ( val>>=1 ) != 0 ) {
  answer++;
 }
 return answer;
}
