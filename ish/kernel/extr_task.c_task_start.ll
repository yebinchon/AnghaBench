; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_task.c_task_start.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_task.c_task_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32 }

@task_thread_attr = common dso_local global i32 0, align 4
@task_run = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not create thread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @task_start(%struct.task* %0) #0 {
  %2 = alloca %struct.task*, align 8
  store %struct.task* %0, %struct.task** %2, align 8
  %3 = load %struct.task*, %struct.task** %2, align 8
  %4 = getelementptr inbounds %struct.task, %struct.task* %3, i32 0, i32 0
  %5 = load i32, i32* @task_run, align 4
  %6 = load %struct.task*, %struct.task** %2, align 8
  %7 = call i64 @pthread_create(i32* %4, i32* @task_thread_attr, i32 %5, %struct.task* %6)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.task*) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
