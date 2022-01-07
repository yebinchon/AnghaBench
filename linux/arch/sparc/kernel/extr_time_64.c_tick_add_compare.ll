; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_time_64.c_tick_add_compare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_time_64.c_tick_add_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TICKCMP_IRQ_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @tick_add_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tick_add_compare(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = call i64 asm sideeffect "rd\09%tick, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* @TICKCMP_IRQ_BIT, align 8
  %8 = xor i64 %7, -1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, %8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call i64 asm sideeffect "ba,pt\09%xcc, 1f\0A\09 add\09$1, $2, $0\0A\09.align\0964\0A1:\0A\09wr\09$0, 0, %tick_cmpr\0A\09rd\09%tick_cmpr, %g0\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i64 %11, i64 %12) #1, !srcloc !3
  store i64 %13, i64* %5, align 8
  %14 = call i64 asm sideeffect "rd\09%tick, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* @TICKCMP_IRQ_BIT, align 8
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %2, align 8
  %22 = add i64 %20, %21
  %23 = sub i64 %19, %22
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 310}
!3 = !{i32 410, i32 428, i32 458, i32 493, i32 497, i32 533, i32 568}
!4 = !{i32 663}
