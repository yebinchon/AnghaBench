; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.inactive_task_frame = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8
@THREAD_SIZE = common dso_local global i64 0, align 8
@TOP_OF_KERNEL_STACK_PADDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %14 = icmp eq %struct.task_struct* %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TASK_RUNNING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  store i64 0, i64* %2, align 8
  br label %103

22:                                               ; preds = %15
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = call i32 @try_get_task_stack(%struct.task_struct* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i64 0, i64* %2, align 8
  br label %103

27:                                               ; preds = %22
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = call i64 @task_stack_page(%struct.task_struct* %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %99

33:                                               ; preds = %27
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @THREAD_SIZE, align 8
  %36 = add i64 %34, %35
  %37 = load i64, i64* @TOP_OF_KERNEL_STACK_PADDING, align 8
  %38 = sub i64 %36, %37
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = sub i64 %39, 16
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %5, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @READ_ONCE(i32 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %33
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %33
  br label %99

55:                                               ; preds = %50
  %56 = load i64, i64* %7, align 8
  %57 = inttoptr i64 %56 to %struct.inactive_task_frame*
  %58 = getelementptr inbounds %struct.inactive_task_frame, %struct.inactive_task_frame* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @READ_ONCE_NOCHECK(i64 %59)
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %96, %55
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %61
  br label %99

70:                                               ; preds = %65
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 8
  %73 = inttoptr i64 %72 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @READ_ONCE_NOCHECK(i64 %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @in_sched_functions(i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %70
  %80 = load i64, i64* %9, align 8
  store i64 %80, i64* %10, align 8
  br label %99

81:                                               ; preds = %70
  %82 = load i64, i64* %8, align 8
  %83 = inttoptr i64 %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @READ_ONCE_NOCHECK(i64 %84)
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = icmp slt i32 %87, 16
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %92 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TASK_RUNNING, align 8
  %95 = icmp ne i64 %93, %94
  br label %96

96:                                               ; preds = %90, %86
  %97 = phi i1 [ false, %86 ], [ %95, %90 ]
  br i1 %97, label %61, label %98

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98, %79, %69, %54, %32
  %100 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %101 = call i32 @put_task_stack(%struct.task_struct* %100)
  %102 = load i64, i64* %10, align 8
  store i64 %102, i64* %2, align 8
  br label %103

103:                                              ; preds = %99, %26, %21
  %104 = load i64, i64* %2, align 8
  ret i64 %104
}

declare dso_local i32 @try_get_task_stack(%struct.task_struct*) #1

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @READ_ONCE_NOCHECK(i64) #1

declare dso_local i32 @in_sched_functions(i64) #1

declare dso_local i32 @put_task_stack(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
