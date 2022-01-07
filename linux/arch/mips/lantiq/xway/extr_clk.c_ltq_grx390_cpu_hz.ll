; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_clk.c_ltq_grx390_cpu_hz.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_clk.c_ltq_grx390_cpu_hz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CGU_SYS_XRX = common dso_local global i32 0, align 4
@CLOCK_600M = common dso_local global i32 0, align 4
@CLOCK_666M = common dso_local global i32 0, align 4
@CLOCK_720M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ltq_grx390_cpu_hz() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @CGU_SYS_XRX, align 4
  %6 = call i32 @ltq_cgu_r32(i32 %5)
  %7 = ashr i32 %6, 9
  %8 = and i32 %7, 3
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @CGU_SYS_XRX, align 4
  %10 = call i32 @ltq_cgu_r32(i32 %9)
  %11 = ashr i32 %10, 4
  %12 = and i32 %11, 7
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %20 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %18
  ]

14:                                               ; preds = %0
  %15 = load i32, i32* @CLOCK_600M, align 4
  store i32 %15, i32* %2, align 4
  br label %22

16:                                               ; preds = %0
  %17 = load i32, i32* @CLOCK_666M, align 4
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %0
  %19 = load i32, i32* @CLOCK_720M, align 4
  store i32 %19, i32* %2, align 4
  br label %22

20:                                               ; preds = %0
  %21 = load i32, i32* @CLOCK_600M, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %18, %16, %14
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %35 [
    i32 0, label %24
    i32 1, label %27
    i32 2, label %31
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %2, align 4
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %1, align 8
  br label %38

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  %29 = lshr i32 %28, 1
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %1, align 8
  br label %38

31:                                               ; preds = %22
  %32 = load i32, i32* %2, align 4
  %33 = lshr i32 %32, 2
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %1, align 8
  br label %38

35:                                               ; preds = %22
  %36 = load i32, i32* %2, align 4
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %1, align 8
  br label %38

38:                                               ; preds = %35, %31, %27, %24
  %39 = load i64, i64* %1, align 8
  ret i64 %39
}

declare dso_local i32 @ltq_cgu_r32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
