; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@KERN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = icmp ne %struct.task_struct* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %10

8:                                                ; preds = %2
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi %struct.task_struct* [ %5, %7 ], [ %9, %8 ]
  store %struct.task_struct* %11, %struct.task_struct** %3, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %17 = icmp eq %struct.task_struct* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %20 = call i64* @get_stack_pointer(%struct.task_struct* %19, i32* null)
  store i64* %20, i64** %4, align 8
  br label %21

21:                                               ; preds = %18, %14, %10
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = load i32, i32* @KERN_DEFAULT, align 4
  %25 = call i32 @show_trace_log_lvl(%struct.task_struct* %22, i32* null, i64* %23, i32 %24)
  ret void
}

declare dso_local i64* @get_stack_pointer(%struct.task_struct*, i32*) #1

declare dso_local i32 @show_trace_log_lvl(%struct.task_struct*, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
