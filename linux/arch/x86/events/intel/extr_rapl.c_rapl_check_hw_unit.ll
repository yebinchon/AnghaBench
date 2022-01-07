; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_rapl.c_rapl_check_hw_unit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_rapl.c_rapl_check_hw_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_RAPL_POWER_UNIT = common dso_local global i32 0, align 4
@NR_RAPL_DOMAINS = common dso_local global i32 0, align 4
@rapl_hw_unit = common dso_local global i32* null, align 8
@PERF_RAPL_RAM = common dso_local global i64 0, align 8
@rapl_timer_ms = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rapl_check_hw_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rapl_check_hw_unit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @MSR_RAPL_POWER_UNIT, align 4
  %7 = call i64 @rdmsrl_safe(i32 %6, i32* %4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %51

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NR_RAPL_DOMAINS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 8
  %18 = sext i32 %17 to i64
  %19 = and i64 %18, 31
  %20 = trunc i64 %19 to i32
  %21 = load i32*, i32** @rapl_hw_unit, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %20, i32* %24, align 4
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11

28:                                               ; preds = %11
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32*, i32** @rapl_hw_unit, align 8
  %33 = load i64, i64* @PERF_RAPL_RAM, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 16, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %28
  store i64 2, i64* @rapl_timer_ms, align 8
  %36 = load i32*, i32** @rapl_hw_unit, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  store i64 5, i64* @rapl_timer_ms, align 8
  %41 = load i32*, i32** @rapl_hw_unit, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 32, %43
  %45 = sub nsw i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = shl i64 1, %46
  %48 = load i64, i64* @rapl_timer_ms, align 8
  %49 = mul i64 %48, %47
  store i64 %49, i64* @rapl_timer_ms, align 8
  br label %50

50:                                               ; preds = %40, %35
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @rdmsrl_safe(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
