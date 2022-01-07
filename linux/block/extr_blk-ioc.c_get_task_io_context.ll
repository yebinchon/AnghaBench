; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-ioc.c_get_task_io_context.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-ioc.c_get_task_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_context = type { i32 }
%struct.task_struct = type { %struct.io_context* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.io_context* @get_task_io_context(%struct.task_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.io_context*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.io_context*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @gfpflags_allow_blocking(i32 %9)
  %11 = call i32 @might_sleep_if(i32 %10)
  br label %12

12:                                               ; preds = %30, %3
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = call i32 @task_lock(%struct.task_struct* %13)
  %15 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load %struct.io_context*, %struct.io_context** %16, align 8
  store %struct.io_context* %17, %struct.io_context** %8, align 8
  %18 = load %struct.io_context*, %struct.io_context** %8, align 8
  %19 = call i64 @likely(%struct.io_context* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.io_context*, %struct.io_context** %8, align 8
  %23 = call i32 @get_io_context(%struct.io_context* %22)
  %24 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %25 = call i32 @task_unlock(%struct.task_struct* %24)
  %26 = load %struct.io_context*, %struct.io_context** %8, align 8
  store %struct.io_context* %26, %struct.io_context** %4, align 8
  br label %38

27:                                               ; preds = %12
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = call i32 @task_unlock(%struct.task_struct* %28)
  br label %30

30:                                               ; preds = %27
  %31 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @create_task_io_context(%struct.task_struct* %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %12, label %37

37:                                               ; preds = %30
  store %struct.io_context* null, %struct.io_context** %4, align 8
  br label %38

38:                                               ; preds = %37, %21
  %39 = load %struct.io_context*, %struct.io_context** %4, align 8
  ret %struct.io_context* %39
}

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @gfpflags_allow_blocking(i32) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i64 @likely(%struct.io_context*) #1

declare dso_local i32 @get_io_context(%struct.io_context*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @create_task_io_context(%struct.task_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
