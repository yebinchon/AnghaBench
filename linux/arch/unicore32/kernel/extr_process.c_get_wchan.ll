; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_process.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_process.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.stackframe = type { i64, i64, i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.stackframe, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = icmp ne %struct.task_struct* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %12 = icmp eq %struct.task_struct* %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TASK_RUNNING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %9, %1
  store i64 0, i64* %2, align 8
  br label %50

20:                                               ; preds = %13
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = call i32 @thread_saved_fp(%struct.task_struct* %21)
  %23 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %4, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = call i32 @thread_saved_sp(%struct.task_struct* %24)
  %26 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %4, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %4, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = call i64 @thread_saved_pc(%struct.task_struct* %28)
  %30 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %4, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %45, %20
  %32 = call i32 @unwind_frame(%struct.stackframe* %4)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i64 0, i64* %2, align 8
  br label %50

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @in_sched_functions(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %4, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %2, align 8
  br label %50

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = icmp slt i32 %46, 16
  br i1 %48, label %31, label %49

49:                                               ; preds = %45
  store i64 0, i64* %2, align 8
  br label %50

50:                                               ; preds = %49, %41, %35, %19
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

declare dso_local i32 @thread_saved_fp(%struct.task_struct*) #1

declare dso_local i32 @thread_saved_sp(%struct.task_struct*) #1

declare dso_local i64 @thread_saved_pc(%struct.task_struct*) #1

declare dso_local i32 @unwind_frame(%struct.stackframe*) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
