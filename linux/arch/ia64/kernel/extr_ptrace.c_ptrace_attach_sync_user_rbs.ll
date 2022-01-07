; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_ptrace_attach_sync_user_rbs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_ptrace_attach_sync_user_rbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.unw_frame_info = type { i32 }

@tasklist_lock = common dso_local global i32 0, align 4
@TASK_STOPPED = common dso_local global i64 0, align 8
@TIF_RESTORE_RSE = common dso_local global i32 0, align 4
@TASK_TRACED = common dso_local global i64 0, align 8
@ia64_sync_user_rbs = common dso_local global i32 0, align 4
@SIGNAL_STOP_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ptrace_attach_sync_user_rbs(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.unw_frame_info, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @read_lock(i32* @tasklist_lock)
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TASK_STOPPED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %10
  %22 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %23 = load i32, i32* @TIF_RESTORE_RSE, align 4
  %24 = call i32 @test_and_set_tsk_thread_flag(%struct.task_struct* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %28 = call i32 @set_notify_resume(%struct.task_struct* %27)
  %29 = load i64, i64* @TASK_TRACED, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %21, %10
  %33 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock_irq(i32* %36)
  br label %38

38:                                               ; preds = %32, %1
  %39 = call i32 @read_unlock(i32* @tasklist_lock)
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %85

43:                                               ; preds = %38
  %44 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %45 = call i32 @unw_init_from_blocked_task(%struct.unw_frame_info* %4, %struct.task_struct* %44)
  %46 = load i32, i32* @ia64_sync_user_rbs, align 4
  %47 = call i32 @do_sync_rbs(%struct.unw_frame_info* %4, i32 %46)
  %48 = call i32 @read_lock(i32* @tasklist_lock)
  %49 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %83

53:                                               ; preds = %43
  %54 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @spin_lock_irq(i32* %57)
  %59 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TASK_TRACED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %53
  %65 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SIGNAL_STOP_STOPPED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i64, i64* @TASK_STOPPED, align 8
  %75 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %64, %53
  %78 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %79 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock_irq(i32* %81)
  br label %83

83:                                               ; preds = %77, %43
  %84 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %85

85:                                               ; preds = %83, %42
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @test_and_set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @set_notify_resume(%struct.task_struct*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @unw_init_from_blocked_task(%struct.unw_frame_info*, %struct.task_struct*) #1

declare dso_local i32 @do_sync_rbs(%struct.unw_frame_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
