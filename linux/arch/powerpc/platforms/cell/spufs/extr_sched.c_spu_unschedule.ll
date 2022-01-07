; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c_spu_unschedule.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c_spu_unschedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.spu = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.spu_context = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@cbe_spu_info = common dso_local global %struct.TYPE_6__* null, align 8
@SPU_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu*, %struct.spu_context*, i32)* @spu_unschedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_unschedule(%struct.spu* %0, %struct.spu_context* %1, i32 %2) #0 {
  %4 = alloca %struct.spu*, align 8
  %5 = alloca %struct.spu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spu* %0, %struct.spu** %4, align 8
  store %struct.spu_context* %1, %struct.spu_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.spu*, %struct.spu** %4, align 8
  %9 = getelementptr inbounds %struct.spu, %struct.spu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_spu_info, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_spu_info, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @SPU_FREE, align 4
  %28 = load %struct.spu*, %struct.spu** %4, align 8
  %29 = getelementptr inbounds %struct.spu, %struct.spu* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.spu*, %struct.spu** %4, align 8
  %32 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %33 = call i32 @spu_unbind_context(%struct.spu* %31, %struct.spu_context* %32)
  %34 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %35 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.spu*, %struct.spu** %4, align 8
  %40 = getelementptr inbounds %struct.spu, %struct.spu* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_spu_info, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spu_unbind_context(%struct.spu*, %struct.spu_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
