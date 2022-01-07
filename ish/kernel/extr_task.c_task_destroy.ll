; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_task.c_task_destroy.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_task.c_task_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32, i32 }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @task_destroy(%struct.task* %0) #0 {
  %2 = alloca %struct.task*, align 8
  store %struct.task* %0, %struct.task** %2, align 8
  %3 = load %struct.task*, %struct.task** %2, align 8
  %4 = getelementptr inbounds %struct.task, %struct.task* %3, i32 0, i32 1
  %5 = call i32 @list_remove(i32* %4)
  %6 = load %struct.task*, %struct.task** %2, align 8
  %7 = getelementptr inbounds %struct.task, %struct.task* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_2__* @pid_get(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load %struct.task*, %struct.task** %2, align 8
  %12 = call i32 @free(%struct.task* %11)
  ret void
}

declare dso_local i32 @list_remove(i32*) #1

declare dso_local %struct.TYPE_2__* @pid_get(i32) #1

declare dso_local i32 @free(%struct.task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
