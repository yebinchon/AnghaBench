; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_ia64_sync_kernel_rbs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_ia64_sync_kernel_rbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.switch_stack = type { i32 }

@FOLL_FORCE = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, %struct.switch_stack*, i64, i64)* @ia64_sync_kernel_rbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ia64_sync_kernel_rbs(%struct.task_struct* %0, %struct.switch_stack* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.switch_stack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.switch_stack* %1, %struct.switch_stack** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %10, align 8
  br label %14

14:                                               ; preds = %40, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* @FOLL_FORCE, align 4
  %22 = call i32 @access_process_vm(%struct.task_struct* %19, i64 %20, i64* %11, i32 8, i32 %21)
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 8
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i64, i64* @EIO, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %44

28:                                               ; preds = %18
  %29 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %30 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i64 @ia64_poke(%struct.task_struct* %29, %struct.switch_stack* %30, i64 %31, i64 %32, i64 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i64, i64* %12, align 8
  store i64 %38, i64* %5, align 8
  br label %44

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, 8
  store i64 %42, i64* %10, align 8
  br label %14

43:                                               ; preds = %14
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %43, %37, %25
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local i32 @access_process_vm(%struct.task_struct*, i64, i64*, i32, i32) #1

declare dso_local i64 @ia64_poke(%struct.task_struct*, %struct.switch_stack*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
