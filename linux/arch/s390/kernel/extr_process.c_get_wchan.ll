; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_process.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_process.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.stack_frame = type { i32*, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.stack_frame*, align 8
  %5 = alloca %struct.stack_frame*, align 8
  %6 = alloca %struct.stack_frame*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = icmp ne %struct.task_struct* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %14 = icmp eq %struct.task_struct* %12, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TASK_RUNNING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = call %struct.stack_frame* @task_stack_page(%struct.task_struct* %22)
  %24 = icmp ne %struct.stack_frame* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %15, %11, %1
  store i64 0, i64* %2, align 8
  br label %88

26:                                               ; preds = %21
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = call i32 @try_get_task_stack(%struct.task_struct* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i64 0, i64* %2, align 8
  br label %88

31:                                               ; preds = %26
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = call %struct.stack_frame* @task_stack_page(%struct.task_struct* %32)
  store %struct.stack_frame* %33, %struct.stack_frame** %5, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %35 = call i64 @task_pt_regs(%struct.task_struct* %34)
  %36 = inttoptr i64 %35 to %struct.stack_frame*
  store %struct.stack_frame* %36, %struct.stack_frame** %6, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.stack_frame*
  store %struct.stack_frame* %41, %struct.stack_frame** %4, align 8
  %42 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %43 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %44 = icmp ule %struct.stack_frame* %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %31
  %46 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %47 = load %struct.stack_frame*, %struct.stack_frame** %6, align 8
  %48 = icmp ugt %struct.stack_frame* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %31
  store i64 0, i64* %7, align 8
  br label %84

50:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %80, %50
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %83

54:                                               ; preds = %51
  %55 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %56 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @READ_ONCE_NOCHECK(i32 %57)
  %59 = inttoptr i64 %58 to %struct.stack_frame*
  store %struct.stack_frame* %59, %struct.stack_frame** %4, align 8
  %60 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %61 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %62 = icmp ule %struct.stack_frame* %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %65 = load %struct.stack_frame*, %struct.stack_frame** %6, align 8
  %66 = icmp ugt %struct.stack_frame* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %54
  store i64 0, i64* %7, align 8
  br label %84

68:                                               ; preds = %63
  %69 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %70 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 8
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @READ_ONCE_NOCHECK(i32 %73)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @in_sched_functions(i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  br label %84

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %51

83:                                               ; preds = %51
  br label %84

84:                                               ; preds = %83, %78, %67, %49
  %85 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %86 = call i32 @put_task_stack(%struct.task_struct* %85)
  %87 = load i64, i64* %7, align 8
  store i64 %87, i64* %2, align 8
  br label %88

88:                                               ; preds = %84, %30, %25
  %89 = load i64, i64* %2, align 8
  ret i64 %89
}

declare dso_local %struct.stack_frame* @task_stack_page(%struct.task_struct*) #1

declare dso_local i32 @try_get_task_stack(%struct.task_struct*) #1

declare dso_local i64 @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @READ_ONCE_NOCHECK(i32) #1

declare dso_local i32 @in_sched_functions(i64) #1

declare dso_local i32 @put_task_stack(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
