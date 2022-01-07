; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/mm/extr_sun3kmap.c_sun3_map_test.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/mm/extr_sun3kmap.c_sun3_map_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun3_map_test(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %3, align 8
  %7 = call { i8*, i32 } asm sideeffect ".globl _sun3_map_test_start\0A_sun3_map_test_start:\0A1: moveb ($2), ($0)\0A   moveq #1, $1\0A2:\0A.section .fixup,\22ax\22\0A.even\0A3: moveq #0, $1\0A   jmp 2b\0A.previous\0A.section __ex_table,\22a\22\0A.align 4\0A.long 1b,3b\0A.previous\0A.globl _sun3_map_test_end\0A_sun3_map_test_end:\0A", "={ax},=r,{ax},~{dirflag},~{fpsr},~{flags}"(i64 %6) #1, !srcloc !2
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  store i8* %8, i8** %4, align 8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 224, i32 260, i32 289, i32 316, i32 339, i32 349, i32 379, i32 392, i32 415, i32 432, i32 449, i32 482, i32 498, i32 517, i32 534, i32 567}
