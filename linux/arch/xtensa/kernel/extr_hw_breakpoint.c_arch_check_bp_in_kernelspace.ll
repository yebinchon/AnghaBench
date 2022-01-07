; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_arch_check_bp_in_kernelspace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_arch_check_bp_in_kernelspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_hw_breakpoint = type { i64, i32 }

@TASK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_check_bp_in_kernelspace(%struct.arch_hw_breakpoint* %0) #0 {
  %2 = alloca %struct.arch_hw_breakpoint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.arch_hw_breakpoint* %0, %struct.arch_hw_breakpoint** %2, align 8
  %5 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %2, align 8
  %6 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %2, align 8
  %9 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @TASK_SIZE, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = sub i64 %18, 1
  %20 = load i64, i64* @TASK_SIZE, align 8
  %21 = icmp uge i64 %19, %20
  br label %22

22:                                               ; preds = %14, %1
  %23 = phi i1 [ false, %1 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
