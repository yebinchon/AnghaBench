; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_clk.c_ltq_vr9_fpi_hz.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_clk.c_ltq_vr9_fpi_hz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CGU_SYS_XRX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ltq_vr9_fpi_hz() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i32 (...) @ltq_vr9_cpu_hz()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @CGU_SYS_XRX, align 4
  %6 = call i32 @ltq_cgu_r32(i32 %5)
  %7 = and i32 %6, 3
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  switch i32 %8, label %25 [
    i32 0, label %9
    i32 2, label %12
    i32 3, label %16
    i32 4, label %21
  ]

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  br label %26

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = udiv i32 %13, 2
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %3, align 8
  br label %26

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = mul i32 %17, 2
  %19 = udiv i32 %18, 5
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %3, align 8
  br label %26

21:                                               ; preds = %0
  %22 = load i32, i32* %2, align 4
  %23 = udiv i32 %22, 3
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  br label %26

25:                                               ; preds = %0
  store i64 0, i64* %3, align 8
  br label %26

26:                                               ; preds = %25, %21, %16, %12, %9
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local i32 @ltq_vr9_cpu_hz(...) #1

declare dso_local i32 @ltq_cgu_r32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
