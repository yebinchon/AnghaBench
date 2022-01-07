; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.thread_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@GDB_MAX_REGS = common dso_local global i32 0, align 4
@_R4 = common dso_local global i64 0, align 8
@_R5 = common dso_local global i64 0, align 8
@_R6 = common dso_local global i64 0, align 8
@_R7 = common dso_local global i64 0, align 8
@_R8 = common dso_local global i64 0, align 8
@_R9 = common dso_local global i64 0, align 8
@_R10 = common dso_local global i64 0, align 8
@_FP = common dso_local global i64 0, align 8
@_SPT = common dso_local global i64 0, align 8
@_PC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sleeping_thread_to_gdb_regs(i64* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = icmp eq %struct.task_struct* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %96

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %20, %10
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GDB_MAX_REGS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i64*, i64** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %11

23:                                               ; preds = %11
  %24 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %25 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %24)
  store %struct.thread_info* %25, %struct.thread_info** %5, align 8
  %26 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %27 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %3, align 8
  %31 = load i64, i64* @_R4, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  store i64 %29, i64* %32, align 8
  %33 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %34 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %3, align 8
  %38 = load i64, i64* @_R5, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %36, i64* %39, align 8
  %40 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %41 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %3, align 8
  %45 = load i64, i64* @_R6, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %43, i64* %46, align 8
  %47 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %48 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %3, align 8
  %52 = load i64, i64* @_R7, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %50, i64* %53, align 8
  %54 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %55 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %3, align 8
  %59 = load i64, i64* @_R8, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %57, i64* %60, align 8
  %61 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %62 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %3, align 8
  %66 = load i64, i64* @_R9, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %64, i64* %67, align 8
  %68 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %69 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %3, align 8
  %73 = load i64, i64* @_R10, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64 %71, i64* %74, align 8
  %75 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %76 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %3, align 8
  %80 = load i64, i64* @_FP, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  store i64 %78, i64* %81, align 8
  %82 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %83 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %3, align 8
  %87 = load i64, i64* @_SPT, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 %85, i64* %88, align 8
  %89 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %90 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 9
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %3, align 8
  %94 = load i64, i64* @_PC, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 %92, i64* %95, align 8
  br label %96

96:                                               ; preds = %23, %9
  ret void
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
