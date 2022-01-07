; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_process.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_process.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = icmp ne %struct.task_struct* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %11 = icmp eq %struct.task_struct* %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TASK_RUNNING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %8, %1
  store i64 0, i64* %2, align 8
  br label %40

19:                                               ; preds = %12
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = call i64 @thread_saved_pc(%struct.task_struct* %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @in_sched_functions(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = call %struct.TYPE_4__* @task_thread_info(%struct.task_struct* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i64*
  %32 = getelementptr inbounds i64, i64* %31, i64 6
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = inttoptr i64 %34 to i64*
  %36 = getelementptr inbounds i64, i64* %35, i64 12
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %2, align 8
  br label %40

38:                                               ; preds = %19
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %38, %25, %18
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i64 @thread_saved_pc(%struct.task_struct*) #1

declare dso_local i64 @in_sched_functions(i64) #1

declare dso_local %struct.TYPE_4__* @task_thread_info(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
