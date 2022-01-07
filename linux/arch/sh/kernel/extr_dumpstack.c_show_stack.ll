; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_dumpstack.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_dumpstack.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@current_stack_pointer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Stack: \00", align 1
@THREAD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = icmp ne %struct.task_struct* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %9, %struct.task_struct** %3, align 8
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %13 = icmp eq %struct.task_struct* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i64, i64* @current_stack_pointer, align 8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %4, align 8
  br label %23

17:                                               ; preds = %10
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %4, align 8
  br label %23

23:                                               ; preds = %17, %14
  %24 = load i64*, i64** %4, align 8
  %25 = ptrtoint i64* %24 to i64
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @THREAD_SIZE, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = call i64 @task_stack_page(%struct.task_struct* %28)
  %30 = add i64 %27, %29
  %31 = call i32 @dump_mem(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %30)
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = load i64*, i64** %4, align 8
  %34 = call i32 @show_trace(%struct.task_struct* %32, i64* %33, i32* null)
  ret void
}

declare dso_local i32 @dump_mem(i8*, i64, i64) #1

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i32 @show_trace(%struct.task_struct*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
