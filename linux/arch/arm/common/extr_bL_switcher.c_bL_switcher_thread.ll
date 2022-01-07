; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_bL_switcher.c_bL_switcher_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_bL_switcher.c_bL_switcher_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }
%struct.bL_thread = type { i32, i32, i32 (i8*)*, i8*, i32, i32 }

@__const.bL_switcher_thread.param = private unnamed_addr constant %struct.sched_param { i32 1 }, align 4
@current = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bL_switcher_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bL_switcher_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bL_thread*, align 8
  %4 = alloca %struct.sched_param, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32 (i8*)*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.bL_thread*
  store %struct.bL_thread* %9, %struct.bL_thread** %3, align 8
  %10 = bitcast %struct.sched_param* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.sched_param* @__const.bL_switcher_thread.param to i8*), i64 4, i1 false)
  %11 = load i32, i32* @current, align 4
  %12 = load i32, i32* @SCHED_FIFO, align 4
  %13 = call i32 @sched_setscheduler_nocheck(i32 %11, i32 %12, %struct.sched_param* %4)
  %14 = load %struct.bL_thread*, %struct.bL_thread** %3, align 8
  %15 = getelementptr inbounds %struct.bL_thread, %struct.bL_thread* %14, i32 0, i32 5
  %16 = call i32 @complete(i32* %15)
  br label %17

17:                                               ; preds = %71, %1
  %18 = load i32, i32* @current, align 4
  %19 = call i64 @signal_pending(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @current, align 4
  %23 = call i32 @flush_signals(i32 %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load %struct.bL_thread*, %struct.bL_thread** %3, align 8
  %26 = getelementptr inbounds %struct.bL_thread, %struct.bL_thread* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.bL_thread*, %struct.bL_thread** %3, align 8
  %29 = getelementptr inbounds %struct.bL_thread, %struct.bL_thread* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = call i64 (...) @kthread_should_stop()
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %32, %24
  %36 = phi i1 [ true, %24 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @wait_event_interruptible(i32 %27, i32 %37)
  %39 = load %struct.bL_thread*, %struct.bL_thread** %3, align 8
  %40 = getelementptr inbounds %struct.bL_thread, %struct.bL_thread* %39, i32 0, i32 1
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.bL_thread*, %struct.bL_thread** %3, align 8
  %43 = getelementptr inbounds %struct.bL_thread, %struct.bL_thread* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %5, align 4
  %45 = load %struct.bL_thread*, %struct.bL_thread** %3, align 8
  %46 = getelementptr inbounds %struct.bL_thread, %struct.bL_thread* %45, i32 0, i32 2
  %47 = load i32 (i8*)*, i32 (i8*)** %46, align 8
  store i32 (i8*)* %47, i32 (i8*)** %6, align 8
  %48 = load %struct.bL_thread*, %struct.bL_thread** %3, align 8
  %49 = getelementptr inbounds %struct.bL_thread, %struct.bL_thread* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %7, align 8
  %51 = load %struct.bL_thread*, %struct.bL_thread** %3, align 8
  %52 = getelementptr inbounds %struct.bL_thread, %struct.bL_thread* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = load %struct.bL_thread*, %struct.bL_thread** %3, align 8
  %54 = getelementptr inbounds %struct.bL_thread, %struct.bL_thread* %53, i32 0, i32 2
  store i32 (i8*)* null, i32 (i8*)** %54, align 8
  %55 = load %struct.bL_thread*, %struct.bL_thread** %3, align 8
  %56 = getelementptr inbounds %struct.bL_thread, %struct.bL_thread* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %70

60:                                               ; preds = %35
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @bL_switch_to(i32 %61)
  %63 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %64 = icmp ne i32 (i8*)* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 %66(i8* %67)
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %35
  br label %71

71:                                               ; preds = %70
  %72 = call i64 (...) @kthread_should_stop()
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %17, label %75

75:                                               ; preds = %71
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sched_setscheduler_nocheck(i32, i32, %struct.sched_param*) #2

declare dso_local i32 @complete(i32*) #2

declare dso_local i64 @signal_pending(i32) #2

declare dso_local i32 @flush_signals(i32) #2

declare dso_local i32 @wait_event_interruptible(i32, i32) #2

declare dso_local i64 @kthread_should_stop(...) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @bL_switch_to(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
