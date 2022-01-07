; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_64.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_64.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.thread_info = type { i64 }
%struct.reg_window = type { i64* }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8
@STACK_BIAS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.thread_info*, align 8
  %7 = alloca %struct.reg_window*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %11 = icmp ne %struct.task_struct* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %15 = icmp eq %struct.task_struct* %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TASK_RUNNING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %12, %1
  br label %65

23:                                               ; preds = %16
  %24 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %25 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %24)
  store %struct.thread_info* %25, %struct.thread_info** %6, align 8
  %26 = load i64, i64* @STACK_BIAS, align 8
  store i64 %26, i64* %5, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %28 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %27)
  %29 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %60, %23
  %34 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @kstack_valid(%struct.thread_info* %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %64

39:                                               ; preds = %33
  %40 = load i64, i64* %4, align 8
  %41 = inttoptr i64 %40 to %struct.reg_window*
  store %struct.reg_window* %41, %struct.reg_window** %7, align 8
  %42 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %43 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 7
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @in_sched_functions(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  %51 = load i64, i64* %3, align 8
  store i64 %51, i64* %8, align 8
  br label %65

52:                                               ; preds = %39
  %53 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %54 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 6
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %57, %58
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = icmp slt i32 %62, 16
  br i1 %63, label %33, label %64

64:                                               ; preds = %60, %38
  br label %65

65:                                               ; preds = %64, %50, %22
  %66 = load i64, i64* %8, align 8
  ret i64 %66
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @kstack_valid(%struct.thread_info*, i64) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
