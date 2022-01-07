
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {struct filesys_inode* next; struct filesys_inode* prev; } ;


 struct filesys_inode* lru_head ;
 struct filesys_inode* lru_tail ;

__attribute__((used)) static void add_use (struct filesys_inode *I) {
  if (lru_tail == ((void*)0)) {
    lru_head = lru_tail = I;
    I->prev = I->next = ((void*)0);
  } else {
    lru_tail->next = I;
    I->prev = lru_tail;
    I->next = ((void*)0);
    lru_tail = I;
  }
}
