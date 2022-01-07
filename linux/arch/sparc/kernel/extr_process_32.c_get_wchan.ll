; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_32.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_32.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.reg_window32 = type { i64* }
%struct.TYPE_2__ = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.reg_window32*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store i64 0, i64* %5, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %11 = ptrtoint %struct.task_struct* %10 to i64
  store i64 %11, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = icmp ne %struct.task_struct* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %17 = icmp eq %struct.task_struct* %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TASK_RUNNING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %14, %1
  br label %72

25:                                               ; preds = %18
  %26 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %27 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %67, %25
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, 4
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = mul nsw i32 2, %40
  %42 = sext i32 %41 to i64
  %43 = add i64 %39, %42
  %44 = icmp uge i64 %38, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37, %32
  br label %71

46:                                               ; preds = %37
  %47 = load i64, i64* %4, align 8
  %48 = inttoptr i64 %47 to %struct.reg_window32*
  store %struct.reg_window32* %48, %struct.reg_window32** %8, align 8
  %49 = load %struct.reg_window32*, %struct.reg_window32** %8, align 8
  %50 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 7
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @in_sched_functions(i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  %58 = load i64, i64* %3, align 8
  store i64 %58, i64* %7, align 8
  br label %72

59:                                               ; preds = %46
  %60 = load %struct.reg_window32*, %struct.reg_window32** %8, align 8
  %61 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 6
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %64, %65
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = icmp slt i32 %69, 16
  br i1 %70, label %32, label %71

71:                                               ; preds = %67, %45
  br label %72

72:                                               ; preds = %71, %57, %24
  %73 = load i64, i64* %7, align 8
  ret i64 %73
}

declare dso_local %struct.TYPE_2__* @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
