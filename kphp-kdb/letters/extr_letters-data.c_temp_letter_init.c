
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int drive_l; int priority; struct TYPE_3__* prev; struct TYPE_3__* next; int * l; } ;
typedef TYPE_1__ temp_letter ;



void temp_letter_init (temp_letter *head_letter) {
  head_letter->id = head_letter->drive_l = head_letter->priority = -1;
  head_letter->l = ((void*)0);
  head_letter->next = head_letter;
  head_letter->prev = head_letter;
}
