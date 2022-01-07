; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c_spu_bind_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c_spu_bind_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.spu = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.spu_context*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.spu_context = type { i32, i32, i32, i32*, %struct.spu*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@spu_bind_context__enter = common dso_local global i32 0, align 4
@SPU_UTIL_SYSTEM = common dso_local global i32 0, align 4
@SPU_CREATE_NOSCHED = common dso_local global i32 0, align 4
@cbe_spu_info = common dso_local global %struct.TYPE_8__* null, align 8
@spu_hw_ops = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_7__* null, align 8
@spufs_ibox_callback = common dso_local global i32 0, align 4
@spufs_wbox_callback = common dso_local global i32 0, align 4
@spufs_stop_callback = common dso_local global i32 0, align 4
@spufs_mfc_callback = common dso_local global i32 0, align 4
@SWITCH_LOG_START = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@SPU_STATE_RUNNABLE = common dso_local global i32 0, align 4
@SPU_UTIL_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu*, %struct.spu_context*)* @spu_bind_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_bind_context(%struct.spu* %0, %struct.spu_context* %1) #0 {
  %3 = alloca %struct.spu*, align 8
  %4 = alloca %struct.spu_context*, align 8
  store %struct.spu* %0, %struct.spu** %3, align 8
  store %struct.spu_context* %1, %struct.spu_context** %4, align 8
  %5 = load i32, i32* @spu_bind_context__enter, align 4
  %6 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %7 = load %struct.spu*, %struct.spu** %3, align 8
  %8 = call i32 @spu_context_trace(i32 %5, %struct.spu_context* %6, %struct.spu* %7)
  %9 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %10 = load i32, i32* @SPU_UTIL_SYSTEM, align 4
  %11 = call i32 @spuctx_switch_state(%struct.spu_context* %9, i32 %10)
  %12 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %13 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cbe_spu_info, align 8
  %20 = load %struct.spu*, %struct.spu** %3, align 8
  %21 = getelementptr inbounds %struct.spu, %struct.spu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = call i32 @atomic_inc(i32* %24)
  br label %26

26:                                               ; preds = %18, %2
  %27 = load %struct.spu*, %struct.spu** %3, align 8
  %28 = getelementptr inbounds %struct.spu, %struct.spu* %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %32 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.spu*, %struct.spu** %3, align 8
  %35 = getelementptr inbounds %struct.spu, %struct.spu* %34, i32 0, i32 11
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %39 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.spu*, %struct.spu** %3, align 8
  %42 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %43 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @spu_associate_mm(%struct.spu* %41, i32 %44)
  %46 = load %struct.spu*, %struct.spu** %3, align 8
  %47 = getelementptr inbounds %struct.spu, %struct.spu* %46, i32 0, i32 2
  %48 = call i32 @spin_lock_irq(i32* %47)
  %49 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %50 = load %struct.spu*, %struct.spu** %3, align 8
  %51 = getelementptr inbounds %struct.spu, %struct.spu* %50, i32 0, i32 10
  store %struct.spu_context* %49, %struct.spu_context** %51, align 8
  %52 = load %struct.spu*, %struct.spu** %3, align 8
  %53 = getelementptr inbounds %struct.spu, %struct.spu* %52, i32 0, i32 9
  store i64 0, i64* %53, align 8
  %54 = load %struct.spu*, %struct.spu** %3, align 8
  %55 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %56 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %55, i32 0, i32 4
  store %struct.spu* %54, %struct.spu** %56, align 8
  %57 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %58 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %57, i32 0, i32 3
  store i32* @spu_hw_ops, i32** %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.spu*, %struct.spu** %3, align 8
  %63 = getelementptr inbounds %struct.spu, %struct.spu* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.spu*, %struct.spu** %3, align 8
  %68 = getelementptr inbounds %struct.spu, %struct.spu* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @spufs_ibox_callback, align 4
  %70 = load %struct.spu*, %struct.spu** %3, align 8
  %71 = getelementptr inbounds %struct.spu, %struct.spu* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @spufs_wbox_callback, align 4
  %73 = load %struct.spu*, %struct.spu** %3, align 8
  %74 = getelementptr inbounds %struct.spu, %struct.spu* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @spufs_stop_callback, align 4
  %76 = load %struct.spu*, %struct.spu** %3, align 8
  %77 = getelementptr inbounds %struct.spu, %struct.spu* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @spufs_mfc_callback, align 4
  %79 = load %struct.spu*, %struct.spu** %3, align 8
  %80 = getelementptr inbounds %struct.spu, %struct.spu* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.spu*, %struct.spu** %3, align 8
  %82 = getelementptr inbounds %struct.spu, %struct.spu* %81, i32 0, i32 2
  %83 = call i32 @spin_unlock_irq(i32* %82)
  %84 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %85 = call i32 @spu_unmap_mappings(%struct.spu_context* %84)
  %86 = load %struct.spu*, %struct.spu** %3, align 8
  %87 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %88 = load i32, i32* @SWITCH_LOG_START, align 4
  %89 = call i32 @spu_switch_log_notify(%struct.spu* %86, %struct.spu_context* %87, i32 %88, i32 0)
  %90 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %91 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %90, i32 0, i32 2
  %92 = load %struct.spu*, %struct.spu** %3, align 8
  %93 = call i32 @spu_restore(i32* %91, %struct.spu* %92)
  %94 = load i32, i32* @jiffies, align 4
  %95 = load %struct.spu*, %struct.spu** %3, align 8
  %96 = getelementptr inbounds %struct.spu, %struct.spu* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.spu*, %struct.spu** %3, align 8
  %98 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %99 = call i32 @spu_switch_notify(%struct.spu* %97, %struct.spu_context* %98)
  %100 = load i32, i32* @SPU_STATE_RUNNABLE, align 4
  %101 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %102 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %104 = load i32, i32* @SPU_UTIL_USER, align 4
  %105 = call i32 @spuctx_switch_state(%struct.spu_context* %103, i32 %104)
  ret void
}

declare dso_local i32 @spu_context_trace(i32, %struct.spu_context*, %struct.spu*) #1

declare dso_local i32 @spuctx_switch_state(%struct.spu_context*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spu_associate_mm(%struct.spu*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @spu_unmap_mappings(%struct.spu_context*) #1

declare dso_local i32 @spu_switch_log_notify(%struct.spu*, %struct.spu_context*, i32, i32) #1

declare dso_local i32 @spu_restore(i32*, %struct.spu*) #1

declare dso_local i32 @spu_switch_notify(%struct.spu*, %struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
