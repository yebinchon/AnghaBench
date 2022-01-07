; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_get_distance_from_watchpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_get_distance_from_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_hw_breakpoint_ctrl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, %struct.arch_hw_breakpoint_ctrl*)* @get_distance_from_watchpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_distance_from_watchpoint(i64 %0, i64 %1, %struct.arch_hw_breakpoint_ctrl* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.arch_hw_breakpoint_ctrl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.arch_hw_breakpoint_ctrl* %2, %struct.arch_hw_breakpoint_ctrl** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @untagged_addr(i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.arch_hw_breakpoint_ctrl*, %struct.arch_hw_breakpoint_ctrl** %7, align 8
  %15 = getelementptr inbounds %struct.arch_hw_breakpoint_ctrl, %struct.arch_hw_breakpoint_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @__ffs(i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.arch_hw_breakpoint_ctrl*, %struct.arch_hw_breakpoint_ctrl** %7, align 8
  %19 = getelementptr inbounds %struct.arch_hw_breakpoint_ctrl, %struct.arch_hw_breakpoint_ctrl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @__fls(i32 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %11, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 %32, %33
  store i64 %34, i64* %4, align 8
  br label %44

35:                                               ; preds = %3
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sub i64 %40, %41
  store i64 %42, i64* %4, align 8
  br label %44

43:                                               ; preds = %35
  store i64 0, i64* %4, align 8
  br label %44

44:                                               ; preds = %43, %39, %31
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i64 @untagged_addr(i64) #1

declare dso_local i64 @__ffs(i32) #1

declare dso_local i64 @__fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
