; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c___spu_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c___spu_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.spu = type { i32, i32, i32* }
%struct.spu_context = type { i32 }

@cbe_spu_info = common dso_local global %struct.TYPE_2__* null, align 8
@SPU_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu*, %struct.spu_context*)* @__spu_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__spu_schedule(%struct.spu* %0, %struct.spu_context* %1) #0 {
  %3 = alloca %struct.spu*, align 8
  %4 = alloca %struct.spu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spu* %0, %struct.spu** %3, align 8
  store %struct.spu_context* %1, %struct.spu_context** %4, align 8
  %7 = load %struct.spu*, %struct.spu** %3, align 8
  %8 = getelementptr inbounds %struct.spu, %struct.spu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %11 = call i32 @spu_set_timeslice(%struct.spu_context* %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cbe_spu_info, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.spu*, %struct.spu** %3, align 8
  %19 = getelementptr inbounds %struct.spu, %struct.spu* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.spu*, %struct.spu** %3, align 8
  %24 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %25 = call i32 @spu_bind_context(%struct.spu* %23, %struct.spu_context* %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cbe_spu_info, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @SPU_USED, align 4
  %34 = load %struct.spu*, %struct.spu** %3, align 8
  %35 = getelementptr inbounds %struct.spu, %struct.spu* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %22, %2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cbe_spu_info, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %47 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %46, i32 0, i32 0
  %48 = call i32 @wake_up_all(i32* %47)
  br label %52

49:                                               ; preds = %36
  %50 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %51 = call i32 @spu_add_to_rq(%struct.spu_context* %50)
  br label %52

52:                                               ; preds = %49, %45
  ret void
}

declare dso_local i32 @spu_set_timeslice(%struct.spu_context*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spu_bind_context(%struct.spu*, %struct.spu_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spu_add_to_rq(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
