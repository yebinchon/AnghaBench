; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_hw_breakpoint_slot_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_hw_breakpoint_slot_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unhandled hw breakpoint ops %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event**, i32, %struct.perf_event*, i32)* @hw_breakpoint_slot_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_breakpoint_slot_setup(%struct.perf_event** %0, i32 %1, %struct.perf_event* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_event**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.perf_event**, align 8
  store %struct.perf_event** %0, %struct.perf_event*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.perf_event* %2, %struct.perf_event** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %54, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %12
  %17 = load %struct.perf_event**, %struct.perf_event*** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %17, i64 %19
  store %struct.perf_event** %20, %struct.perf_event*** %11, align 8
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %48 [
    i32 130, label %22
    i32 128, label %31
    i32 129, label %40
  ]

22:                                               ; preds = %16
  %23 = load %struct.perf_event**, %struct.perf_event*** %11, align 8
  %24 = load %struct.perf_event*, %struct.perf_event** %23, align 8
  %25 = icmp ne %struct.perf_event* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %28 = load %struct.perf_event**, %struct.perf_event*** %11, align 8
  store %struct.perf_event* %27, %struct.perf_event** %28, align 8
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %60

30:                                               ; preds = %22
  br label %53

31:                                               ; preds = %16
  %32 = load %struct.perf_event**, %struct.perf_event*** %11, align 8
  %33 = load %struct.perf_event*, %struct.perf_event** %32, align 8
  %34 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %35 = icmp eq %struct.perf_event* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.perf_event**, %struct.perf_event*** %11, align 8
  store %struct.perf_event* null, %struct.perf_event** %37, align 8
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %60

39:                                               ; preds = %31
  br label %53

40:                                               ; preds = %16
  %41 = load %struct.perf_event**, %struct.perf_event*** %11, align 8
  %42 = load %struct.perf_event*, %struct.perf_event** %41, align 8
  %43 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %44 = icmp eq %struct.perf_event* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %60

47:                                               ; preds = %40
  br label %53

48:                                               ; preds = %16
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @pr_warn_once(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %60

53:                                               ; preds = %47, %39, %30
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %12

57:                                               ; preds = %12
  %58 = load i32, i32* @ENOSPC, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %48, %45, %36, %26
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @pr_warn_once(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
