; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_clk.c_ltq_ar10_fpi_hz.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_clk.c_ltq_ar10_fpi_hz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CGU_IF_CLK_AR10 = common dso_local global i32 0, align 4
@CLOCK_300M = common dso_local global i64 0, align 8
@CLOCK_250M = common dso_local global i64 0, align 8
@CLOCK_150M = common dso_local global i64 0, align 8
@CLOCK_125M = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ltq_ar10_fpi_hz() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CGU_IF_CLK_AR10, align 4
  %4 = call i32 @ltq_cgu_r32(i32 %3)
  %5 = ashr i32 %4, 25
  %6 = and i32 %5, 15
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %16 [
    i32 1, label %8
    i32 5, label %10
    i32 2, label %12
    i32 6, label %14
  ]

8:                                                ; preds = %0
  %9 = load i64, i64* @CLOCK_300M, align 8
  store i64 %9, i64* %1, align 8
  br label %18

10:                                               ; preds = %0
  %11 = load i64, i64* @CLOCK_250M, align 8
  store i64 %11, i64* %1, align 8
  br label %18

12:                                               ; preds = %0
  %13 = load i64, i64* @CLOCK_150M, align 8
  store i64 %13, i64* %1, align 8
  br label %18

14:                                               ; preds = %0
  %15 = load i64, i64* @CLOCK_125M, align 8
  store i64 %15, i64* %1, align 8
  br label %18

16:                                               ; preds = %0
  %17 = load i64, i64* @CLOCK_125M, align 8
  store i64 %17, i64* %1, align 8
  br label %18

18:                                               ; preds = %16, %14, %12, %10, %8
  %19 = load i64, i64* %1, align 8
  ret i64 %19
}

declare dso_local i32 @ltq_cgu_r32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
