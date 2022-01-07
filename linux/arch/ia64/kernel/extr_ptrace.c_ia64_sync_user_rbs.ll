; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_ia64_sync_user_rbs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_ia64_sync_user_rbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.switch_stack = type { i32 }

@FOLL_FORCE = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ia64_sync_user_rbs(%struct.task_struct* %0, %struct.switch_stack* %1, i64 %2, i64 %3) #0 {
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

14:                                               ; preds = %41, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %20 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @ia64_peek(%struct.task_struct* %19, %struct.switch_stack* %20, i64 %21, i64 %22, i64* %11)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i64, i64* %12, align 8
  store i64 %27, i64* %5, align 8
  br label %45

28:                                               ; preds = %18
  %29 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* @FOLL_FORCE, align 4
  %32 = load i32, i32* @FOLL_WRITE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @access_process_vm(%struct.task_struct* %29, i64 %30, i64* %11, i32 8, i32 %33)
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 8
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i64, i64* @EIO, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %45

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 8
  store i64 %43, i64* %10, align 8
  br label %14

44:                                               ; preds = %14
  store i64 0, i64* %5, align 8
  br label %45

45:                                               ; preds = %44, %37, %26
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i64 @ia64_peek(%struct.task_struct*, %struct.switch_stack*, i64, i64, i64*) #1

declare dso_local i32 @access_process_vm(%struct.task_struct*, i64, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
