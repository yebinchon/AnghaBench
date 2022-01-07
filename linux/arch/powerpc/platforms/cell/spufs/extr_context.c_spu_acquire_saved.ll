; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_context.c_spu_acquire_saved.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_context.c_spu_acquire_saved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { i64, i32 }

@spu_acquire_saved__enter = common dso_local global i32 0, align 4
@SPU_STATE_SAVED = common dso_local global i64 0, align 8
@SPU_SCHED_WAS_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spu_acquire_saved(%struct.spu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  %5 = load i32, i32* @spu_acquire_saved__enter, align 4
  %6 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %7 = call i32 @spu_context_nospu_trace(i32 %5, %struct.spu_context* %6)
  %8 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %9 = call i32 @spu_acquire(%struct.spu_context* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %16 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SPU_STATE_SAVED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32, i32* @SPU_SCHED_WAS_ACTIVE, align 4
  %22 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %23 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %22, i32 0, i32 1
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  %25 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %26 = call i32 @spu_deactivate(%struct.spu_context* %25)
  br label %27

27:                                               ; preds = %20, %14
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @spu_context_nospu_trace(i32, %struct.spu_context*) #1

declare dso_local i32 @spu_acquire(%struct.spu_context*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spu_deactivate(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
