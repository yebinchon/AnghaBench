; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-ip22.c_indy_sc_wipe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-ip22.c_indy_sc_wipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @indy_sc_wipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @indy_sc_wipe(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call { i64, i64, i64 } asm sideeffect "\09.set\09push\09\09\09# indy_sc_wipe\09\09\0A\09.set\09noreorder\09\09\09\09\09\0A\09.set\09mips3\09\09\09\09\09\09\0A\09.set\09noat\09\09\09\09\09\09\0A\09mfc0\09$2, $$12\09\09\09\09\09\09\0A\09li\09$$1, 0x80\09\09# Go 64 bit\09\09\0A\09mtc0\09$$1, $$12\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\0A\09#\09\09\09\09\09\09\09\0A\09# Open code a dli $$1, 0x9000000080000000\09\09\0A\09#\09\09\09\09\09\09\09\0A\09# Required because binutils 2.25 will happily accept\09\0A\09# 64 bit instructions in .set mips3 mode but puke on\09\0A\09# 64 bit constants when generating 32 bit ELF\09\09\0A\09#\09\09\09\09\09\09\09\0A\09lui\09$$1,0x9000\09\09\09\09\09\0A\09dsll\09$$1,$$1,0x10\09\09\09\09\09\0A\09ori\09$$1,$$1,0x8000\09\09\09\09\09\0A\09dsll\09$$1,$$1,0x10\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\0A\09or\09$0, $$1\09\09\09# first line to flush\09\0A\09or\09$1, $$1\09\09\09# last line to flush\09\0A\09.set\09at\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\0A1:\09sw\09$$0, 0($0)\09\09\09\09\09\0A\09bne\09$0, $1, 1b\09\09\09\09\09\0A\09 daddu\09$0, 32\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\0A\09mtc0\09$2, $$12\09\09\09# Back to 32 bit\09\0A\09nop\09\09\09\09# pipeline hazard\09\0A\09nop\09\09\09\09\09\09\09\0A\09nop\09\09\09\09\09\09\09\0A\09nop\09\09\09\09\09\09\09\0A\09.set\09pop\09\09\09\09\09\09\0A", "=r,=r,=&r,0,1,~{dirflag},~{fpsr},~{flags}"(i64 %6, i64 %7) #1, !srcloc !2
  %9 = extractvalue { i64, i64, i64 } %8, 0
  %10 = extractvalue { i64, i64, i64 } %8, 1
  %11 = extractvalue { i64, i64, i64 } %8, 2
  store i64 %9, i64* %3, align 8
  store i64 %10, i64* %4, align 8
  store i64 %11, i64* %5, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 275, i32 311, i32 337, i32 360, i32 382, i32 407, i32 440, i32 465, i32 479, i32 494, i32 543, i32 558, i32 618, i32 678, i32 732, i32 747, i32 772, i32 799, i32 827, i32 854, i32 868, i32 909, i32 949, i32 969, i32 983, i32 1009, i32 1035, i32 1061, i32 1075, i32 1114, i32 1146, i32 1163, i32 1180, i32 1197}
