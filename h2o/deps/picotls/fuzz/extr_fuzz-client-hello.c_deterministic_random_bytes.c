
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



void deterministic_random_bytes(void *buf, size_t len) {
  for (int i = 0; i < len; i++) {
    ((uint8_t *)buf)[i] = 0;
  }
}
