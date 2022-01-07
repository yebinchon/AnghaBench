; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_clk.c_ltq_ar10_cpu_hz.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_clk.c_ltq_ar10_cpu_hz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CGU_SYS_XRX = common dso_local global i32 0, align 4
@CLOCK_500M = common dso_local global i32 0, align 4
@CLOCK_600M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ltq_ar10_cpu_hz() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @CGU_SYS_XRX, align 4
  %6 = call i32 @ltq_cgu_r32(i32 %5)
  %7 = ashr i32 %6, 8
  %8 = and i32 %7, 1
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @CGU_SYS_XRX, align 4
  %10 = call i32 @ltq_cgu_r32(i32 %9)
  %11 = ashr i32 %10, 4
  %12 = and i32 %11, 7
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %18 [
    i32 0, label %14
    i32 1, label %16
  ]

14:                                               ; preds = %0
  %15 = load i32, i32* @CLOCK_500M, align 4
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @CLOCK_600M, align 4
  store i32 %17, i32* %2, align 4
  br label %20

18:                                               ; preds = %0
  %19 = load i32, i32* @CLOCK_500M, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %16, %14
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %33 [
    i32 0, label %22
    i32 1, label %25
    i32 2, label %29
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* %2, align 4
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %1, align 8
  br label %36

25:                                               ; preds = %20
  %26 = load i32, i32* %2, align 4
  %27 = lshr i32 %26, 1
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %1, align 8
  br label %36

29:                                               ; preds = %20
  %30 = load i32, i32* %2, align 4
  %31 = lshr i32 %30, 2
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %1, align 8
  br label %36

33:                                               ; preds = %20
  %34 = load i32, i32* %2, align 4
  %35 = zext i32 %34 to i64
  store i64 %35, i64* %1, align 8
  br label %36

36:                                               ; preds = %33, %29, %25, %22
  %37 = load i64, i64* %1, align 8
  ret i64 %37
}

declare dso_local i32 @ltq_cgu_r32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
