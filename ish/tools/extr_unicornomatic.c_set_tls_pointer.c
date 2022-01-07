
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uc_engine ;
typedef int tls_entry ;
struct gdt_entry {int base0; int base1; int base2; } ;
typedef int dword_t ;


 scalar_t__ GDT_ADDR ;
 int uc_read (int *,scalar_t__,struct gdt_entry*,int) ;
 int uc_write (int *,scalar_t__,struct gdt_entry*,int) ;

__attribute__((used)) static void set_tls_pointer(uc_engine *uc, dword_t tls_ptr) {
    struct gdt_entry tls_entry;
    uc_read(uc, GDT_ADDR + 12 * sizeof(struct gdt_entry), &tls_entry, sizeof(tls_entry));
    tls_entry.base0 = (tls_ptr & 0x0000ffff);
    tls_entry.base1 = (tls_ptr & 0x00ff0000) >> 16;
    tls_entry.base2 = (tls_ptr & 0xff000000) >> 24;
    uc_write(uc, GDT_ADDR + 12 * sizeof(struct gdt_entry), &tls_entry, sizeof(tls_entry));
}
