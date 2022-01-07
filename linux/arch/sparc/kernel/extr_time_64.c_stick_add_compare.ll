; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_time_64.c_stick_add_compare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_time_64.c_stick_add_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TICKCMP_IRQ_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @stick_add_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stick_add_compare(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = call i64 asm sideeffect "rd\09%asr24, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @TICKCMP_IRQ_BIT, align 8
  %7 = xor i64 %6, -1
  %8 = load i64, i64* %3, align 8
  %9 = and i64 %8, %7
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %2, align 8
  %12 = add i64 %10, %11
  call void asm sideeffect "wr\09$0, 0, %asr25", "r,~{dirflag},~{fpsr},~{flags}"(i64 %12) #1, !srcloc !3
  %13 = call i64 asm sideeffect "rd\09%asr24, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* @TICKCMP_IRQ_BIT, align 8
  %15 = xor i64 %14, -1
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %2, align 8
  %21 = add i64 %19, %20
  %22 = sub i64 %18, %21
  %23 = icmp sgt i64 %22, 0
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 298}
!3 = !{i32 399}
!4 = !{i32 486}
