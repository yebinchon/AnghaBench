; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sun4d_smp.c_sun4d_swap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sun4d_smp.c_sun4d_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64)* @sun4d_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun4d_swap(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = call { i64, i64* } asm sideeffect "swap [$1], $0\0A\09", "=&r,=&r,0,1,~{dirflag},~{fpsr},~{flags}"(i64 %5, i64* %6) #1, !srcloc !2
  %8 = extractvalue { i64, i64* } %7, 0
  %9 = extractvalue { i64, i64* } %7, 1
  store i64 %8, i64* %4, align 8
  store i64* %9, i64** %3, align 8
  %10 = load i64, i64* %4, align 8
  ret i64 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 266, i32 282}
