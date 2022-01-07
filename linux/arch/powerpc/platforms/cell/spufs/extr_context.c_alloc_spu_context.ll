; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_context.c_alloc_spu_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_context.c_alloc_spu_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.TYPE_2__, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.spu_gang = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SPU_STATE_SAVED = common dso_local global i32 0, align 4
@spu_backing_ops = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SPU_UTIL_IDLE_LOADED = common dso_local global i32 0, align 4
@nr_spu_contexts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spu_context* @alloc_spu_context(%struct.spu_gang* %0) #0 {
  %2 = alloca %struct.spu_gang*, align 8
  %3 = alloca %struct.spu_context*, align 8
  store %struct.spu_gang* %0, %struct.spu_gang** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.spu_context* @kzalloc(i32 80, i32 %4)
  store %struct.spu_context* %5, %struct.spu_context** %3, align 8
  %6 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %7 = icmp ne %struct.spu_context* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %84

9:                                                ; preds = %1
  %10 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %11 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %10, i32 0, i32 16
  %12 = call i64 @spu_init_csa(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %81

15:                                               ; preds = %9
  %16 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %17 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %16, i32 0, i32 15
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %20 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %19, i32 0, i32 14
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %23 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %22, i32 0, i32 13
  %24 = call i32 @kref_init(i32* %23)
  %25 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %26 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %25, i32 0, i32 12
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %29 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %28, i32 0, i32 11
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %32 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %31, i32 0, i32 10
  %33 = call i32 @init_waitqueue_head(i32* %32)
  %34 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %35 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %34, i32 0, i32 9
  %36 = call i32 @init_waitqueue_head(i32* %35)
  %37 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %38 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %37, i32 0, i32 8
  %39 = call i32 @init_waitqueue_head(i32* %38)
  %40 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %41 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %40, i32 0, i32 7
  %42 = call i32 @init_waitqueue_head(i32* %41)
  %43 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %44 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %43, i32 0, i32 6
  %45 = call i32 @init_waitqueue_head(i32* %44)
  %46 = load i32, i32* @SPU_STATE_SAVED, align 4
  %47 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %48 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %50 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %49, i32 0, i32 4
  store i32* @spu_backing_ops, i32** %50, align 8
  %51 = load i32, i32* @current, align 4
  %52 = call i32 @get_task_mm(i32 %51)
  %53 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %54 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %56 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %55, i32 0, i32 2
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %59 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %58, i32 0, i32 1
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.spu_gang*, %struct.spu_gang** %2, align 8
  %62 = icmp ne %struct.spu_gang* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %15
  %64 = load %struct.spu_gang*, %struct.spu_gang** %2, align 8
  %65 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %66 = call i32 @spu_gang_add_ctx(%struct.spu_gang* %64, %struct.spu_context* %65)
  br label %67

67:                                               ; preds = %63, %15
  %68 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %69 = call i32 @__spu_update_sched_info(%struct.spu_context* %68)
  %70 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %71 = call i32 @spu_set_timeslice(%struct.spu_context* %70)
  %72 = load i32, i32* @SPU_UTIL_IDLE_LOADED, align 4
  %73 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %74 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = call i32 (...) @ktime_get_ns()
  %77 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %78 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = call i32 @atomic_inc(i32* @nr_spu_contexts)
  br label %84

81:                                               ; preds = %14
  %82 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %83 = call i32 @kfree(%struct.spu_context* %82)
  store %struct.spu_context* null, %struct.spu_context** %3, align 8
  br label %84

84:                                               ; preds = %81, %67, %8
  %85 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  ret %struct.spu_context* %85
}

declare dso_local %struct.spu_context* @kzalloc(i32, i32) #1

declare dso_local i64 @spu_init_csa(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @get_task_mm(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spu_gang_add_ctx(%struct.spu_gang*, %struct.spu_context*) #1

declare dso_local i32 @__spu_update_sched_info(%struct.spu_context*) #1

declare dso_local i32 @spu_set_timeslice(%struct.spu_context*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kfree(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
