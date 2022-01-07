; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c___get_wchan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c___get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8
@STACK_FRAME_OVERHEAD = common dso_local global i32 0, align 4
@STACK_FRAME_LR_SAVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*)* @__get_wchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = icmp ne %struct.task_struct* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %12 = icmp eq %struct.task_struct* %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TASK_RUNNING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %9, %1
  store i64 0, i64* %2, align 8
  br label %69

20:                                               ; preds = %13
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = load i32, i32* @STACK_FRAME_OVERHEAD, align 4
  %28 = call i32 @validate_sp(i64 %25, %struct.task_struct* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store i64 0, i64* %2, align 8
  br label %69

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %64, %31
  %33 = load i64, i64* %5, align 8
  %34 = inttoptr i64 %33 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %38 = load i32, i32* @STACK_FRAME_OVERHEAD, align 4
  %39 = call i32 @validate_sp(i64 %36, %struct.task_struct* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TASK_RUNNING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %32
  store i64 0, i64* %2, align 8
  br label %69

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i64, i64* %5, align 8
  %53 = inttoptr i64 %52 to i64*
  %54 = load i64, i64* @STACK_FRAME_LR_SAVE, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @in_sched_functions(i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %51
  %61 = load i64, i64* %4, align 8
  store i64 %61, i64* %2, align 8
  br label %69

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = icmp slt i32 %65, 16
  br i1 %67, label %32, label %68

68:                                               ; preds = %64
  store i64 0, i64* %2, align 8
  br label %69

69:                                               ; preds = %68, %60, %47, %30, %19
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local i32 @validate_sp(i64, %struct.task_struct*, i32) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
