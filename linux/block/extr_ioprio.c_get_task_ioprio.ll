; ModuleID = '/home/carl/AnghaBench/linux/block/extr_ioprio.c_get_task_ioprio.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_ioprio.c_get_task_ioprio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IOPRIO_CLASS_NONE = common dso_local global i32 0, align 4
@IOPRIO_NORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @get_task_ioprio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_task_ioprio(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = call i32 @security_task_getioprio(%struct.task_struct* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %28

9:                                                ; preds = %1
  %10 = load i32, i32* @IOPRIO_CLASS_NONE, align 4
  %11 = load i32, i32* @IOPRIO_NORM, align 4
  %12 = call i32 @IOPRIO_PRIO_VALUE(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = call i32 @task_lock(%struct.task_struct* %13)
  %15 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %9
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %9
  %26 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %27 = call i32 @task_unlock(%struct.task_struct* %26)
  br label %28

28:                                               ; preds = %25, %8
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @security_task_getioprio(%struct.task_struct*) #1

declare dso_local i32 @IOPRIO_PRIO_VALUE(i32, i32) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
