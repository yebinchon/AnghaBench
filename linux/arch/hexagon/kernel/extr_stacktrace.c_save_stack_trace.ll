; ModuleID = '/home/carl/AnghaBench/linux/arch/hexagon/kernel/extr_stacktrace.c_save_stack_trace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/hexagon/kernel/extr_stacktrace.c_save_stack_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_trace = type { i32, i64, i64, i32* }
%struct.stackframe = type { i64, i32 }

@current = common dso_local global i32 0, align 4
@THREAD_SIZE = common dso_local global i64 0, align 8
@current_frame_pointer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_stack_trace(%struct.stack_trace* %0) #0 {
  %2 = alloca %struct.stack_trace*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stackframe*, align 8
  %7 = alloca i32, align 4
  store %struct.stack_trace* %0, %struct.stack_trace** %2, align 8
  %8 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %9 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @current, align 4
  %12 = call i64 @task_stack_page(i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @THREAD_SIZE, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* @current_frame_pointer, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %57, %1
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = sub i64 %23, 16
  %25 = icmp ule i64 %22, %24
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i1 [ false, %17 ], [ %25, %21 ]
  br i1 %27, label %28, label %63

28:                                               ; preds = %26
  %29 = load i64, i64* %5, align 8
  %30 = inttoptr i64 %29 to %struct.stackframe*
  store %struct.stackframe* %30, %struct.stackframe** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %7, align 4
  br label %57

36:                                               ; preds = %28
  %37 = load %struct.stackframe*, %struct.stackframe** %6, align 8
  %38 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %41 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %44 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %39, i32* %47, align 4
  %48 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %49 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %52 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  br label %63

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, 16
  store i64 %59, i64* %3, align 8
  %60 = load %struct.stackframe*, %struct.stackframe** %6, align 8
  %61 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %5, align 8
  br label %17

63:                                               ; preds = %55, %26
  ret void
}

declare dso_local i64 @task_stack_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
