; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_process.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_process.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.stackframe = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.stackframe, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = icmp ne %struct.task_struct* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %13 = icmp eq %struct.task_struct* %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TASK_RUNNING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %10, %1
  store i64 0, i64* %2, align 8
  br label %56

21:                                               ; preds = %14
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = call i64 @try_get_task_stack(%struct.task_struct* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i64 0, i64* %2, align 8
  br label %56

27:                                               ; preds = %21
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = call i32 @thread_saved_fp(%struct.task_struct* %28)
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = call i32 @thread_saved_pc(%struct.task_struct* %30)
  %32 = call i32 @start_backtrace(%struct.stackframe* %4, i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %47, %27
  %34 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %35 = call i64 @unwind_frame(%struct.task_struct* %34, %struct.stackframe* %4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %52

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %4, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @in_sched_functions(i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %4, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %6, align 8
  br label %52

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = icmp slt i32 %48, 16
  br i1 %50, label %33, label %51

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %43, %37
  %53 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %54 = call i32 @put_task_stack(%struct.task_struct* %53)
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %52, %26, %20
  %57 = load i64, i64* %2, align 8
  ret i64 %57
}

declare dso_local i64 @try_get_task_stack(%struct.task_struct*) #1

declare dso_local i32 @start_backtrace(%struct.stackframe*, i32, i32) #1

declare dso_local i32 @thread_saved_fp(%struct.task_struct*) #1

declare dso_local i32 @thread_saved_pc(%struct.task_struct*) #1

declare dso_local i64 @unwind_frame(%struct.task_struct*, %struct.stackframe*) #1

declare dso_local i32 @in_sched_functions(i64) #1

declare dso_local i32 @put_task_stack(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
