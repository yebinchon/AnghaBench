; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_intel_bts_disable_local.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_intel_bts_disable_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bts_ctx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@bts_ctx = common dso_local global i32 0, align 4
@BTS_STATE_ACTIVE = common dso_local global i64 0, align 8
@BTS_STATE_INACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_bts_disable_local() #0 {
  %1 = alloca %struct.bts_ctx*, align 8
  %2 = call %struct.bts_ctx* @this_cpu_ptr(i32* @bts_ctx)
  store %struct.bts_ctx* %2, %struct.bts_ctx** %1, align 8
  %3 = load %struct.bts_ctx*, %struct.bts_ctx** %1, align 8
  %4 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @READ_ONCE(i32 %5)
  %7 = load i64, i64* @BTS_STATE_ACTIVE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %23

10:                                               ; preds = %0
  %11 = load %struct.bts_ctx*, %struct.bts_ctx** %1, align 8
  %12 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.bts_ctx*, %struct.bts_ctx** %1, align 8
  %18 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @BTS_STATE_INACTIVE, align 4
  %22 = call i32 @__bts_event_stop(i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %9, %16, %10
  ret void
}

declare dso_local %struct.bts_ctx* @this_cpu_ptr(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @__bts_event_stop(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
