; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_giveup_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_giveup_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@msr_all_available = common dso_local global i64 0, align 8
@MSR_VSX = common dso_local global i64 0, align 8
@MSR_FP = common dso_local global i64 0, align 8
@MSR_VEC = common dso_local global i64 0, align 8
@MSR_SPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @giveup_all(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = call i32 @check_if_tm_restore_required(%struct.task_struct* %11)
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @msr_all_available, align 8
  %21 = and i64 %19, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  br label %50

24:                                               ; preds = %10
  %25 = load i64, i64* @msr_all_available, align 8
  %26 = call i32 @msr_check_and_set(i64 %25)
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @MSR_VSX, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @MSR_FP, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @MSR_VEC, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %41, %24
  %45 = phi i1 [ false, %24 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load i64, i64* @msr_all_available, align 8
  %49 = call i32 @msr_check_and_clear(i64 %48)
  br label %50

50:                                               ; preds = %44, %23, %9
  ret void
}

declare dso_local i32 @check_if_tm_restore_required(%struct.task_struct*) #1

declare dso_local i32 @msr_check_and_set(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @msr_check_and_clear(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
