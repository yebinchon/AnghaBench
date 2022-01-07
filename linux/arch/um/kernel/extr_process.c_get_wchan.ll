; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_process.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_process.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8
@THREAD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = icmp eq %struct.task_struct* %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %13 = icmp eq %struct.task_struct* %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TASK_RUNNING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %10, %1
  store i64 0, i64* %2, align 8
  br label %67

21:                                               ; preds = %14
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = call i64 @task_stack_page(%struct.task_struct* %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i64 0, i64* %2, align 8
  br label %67

27:                                               ; preds = %21
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i64 0, i64* %2, align 8
  br label %67

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @THREAD_SIZE, align 8
  %43 = add i64 %41, %42
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load i64, i64* %5, align 8
  %47 = inttoptr i64 %46 to i64*
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @in_sched_functions(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %63

53:                                               ; preds = %45
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @kernel_text_address(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %2, align 8
  br label %67

62:                                               ; preds = %57, %53
  br label %63

63:                                               ; preds = %62, %52
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, 8
  store i64 %65, i64* %5, align 8
  br label %39

66:                                               ; preds = %39
  store i64 0, i64* %2, align 8
  br label %67

67:                                               ; preds = %66, %60, %37, %26, %20
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i64 @in_sched_functions(i64) #1

declare dso_local i64 @kernel_text_address(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
