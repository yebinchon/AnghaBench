; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_to_irq_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_to_irq_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info* }
%struct.thread_info = type { i64, %struct.thread_info* }

@pending_mask = common dso_local global i32 0, align 4
@cpu_tasks = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @to_irq_stack(i64* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.thread_info*, align 8
  store i64* %0, i64** %3, align 8
  %10 = load i64*, i64** %3, align 8
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @xchg(i32* @pending_mask, i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load i64*, i64** %3, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %24, %15
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @xchg(i32* @pending_mask, i64 %22)
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %18, label %28

28:                                               ; preds = %24
  store i64 1, i64* %2, align 8
  br label %67

29:                                               ; preds = %1
  %30 = call %struct.thread_info* (...) @current_thread_info()
  store %struct.thread_info* %30, %struct.thread_info** %4, align 8
  %31 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %32 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %31, i32 0, i32 1
  %33 = load %struct.thread_info*, %struct.thread_info** %32, align 8
  %34 = icmp ne %struct.thread_info* %33, null
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %29
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_tasks, align 8
  %40 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %41 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.task_struct*, %struct.task_struct** %44, align 8
  store %struct.task_struct* %45, %struct.task_struct** %8, align 8
  %46 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %47 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %46)
  store %struct.thread_info* %47, %struct.thread_info** %9, align 8
  %48 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %49 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %50 = bitcast %struct.thread_info* %48 to i8*
  %51 = bitcast %struct.thread_info* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %53 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %54 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %53, i32 0, i32 1
  store %struct.thread_info* %52, %struct.thread_info** %54, align 8
  %55 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %56 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 0
  store %struct.thread_info* %55, %struct.thread_info** %57, align 8
  br label %58

58:                                               ; preds = %38, %29
  %59 = call i64 @xchg(i32* @pending_mask, i64 0)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = or i64 %60, %62
  %64 = load i64*, i64** %3, align 8
  %65 = load i64, i64* %64, align 8
  %66 = or i64 %65, %63
  store i64 %66, i64* %64, align 8
  store i64 0, i64* %2, align 8
  br label %67

67:                                               ; preds = %58, %28
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local i64 @xchg(i32*, i64) #1

declare dso_local %struct.thread_info* @current_thread_info(...) #1

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
