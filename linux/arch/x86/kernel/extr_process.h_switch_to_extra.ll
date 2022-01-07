; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process.h_switch_to_extra.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process.h_switch_to_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i64 }

@CONFIG_SMP = common dso_local global i32 0, align 4
@switch_to_cond_stibp = common dso_local global i32 0, align 4
@_TIF_SPEC_IB = common dso_local global i64 0, align 8
@_TIF_WORK_CTXSW_NEXT = common dso_local global i64 0, align 8
@_TIF_WORK_CTXSW_PREV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.task_struct*)* @switch_to_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_to_extra(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* @CONFIG_SMP, align 4
  %16 = call i64 @IS_ENABLED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = call i32 @static_branch_likely(i32* @switch_to_cond_stibp)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* @_TIF_SPEC_IB, align 8
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %6, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* @_TIF_SPEC_IB, align 8
  %27 = xor i64 %26, -1
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %21, %18
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @_TIF_WORK_CTXSW_NEXT, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @_TIF_WORK_CTXSW_PREV, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ true, %31 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %49 = call i32 @__switch_to_xtra(%struct.task_struct* %47, %struct.task_struct* %48)
  br label %50

50:                                               ; preds = %46, %41
  ret void
}

declare dso_local %struct.TYPE_2__* @task_thread_info(%struct.task_struct*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @static_branch_likely(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__switch_to_xtra(%struct.task_struct*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
