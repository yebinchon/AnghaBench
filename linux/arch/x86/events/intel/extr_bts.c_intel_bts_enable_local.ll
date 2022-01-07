; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_intel_bts_enable_local.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_intel_bts_enable_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bts_ctx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@bts_ctx = common dso_local global i32 0, align 4
@BTS_STATE_ACTIVE = common dso_local global i32 0, align 4
@BTS_STATE_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_bts_enable_local() #0 {
  %1 = alloca %struct.bts_ctx*, align 8
  %2 = alloca i32, align 4
  %3 = call %struct.bts_ctx* @this_cpu_ptr(i32* @bts_ctx)
  store %struct.bts_ctx* %3, %struct.bts_ctx** %1, align 8
  %4 = load %struct.bts_ctx*, %struct.bts_ctx** %1, align 8
  %5 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @READ_ONCE(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @BTS_STATE_ACTIVE, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON_ONCE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %32

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @BTS_STATE_STOPPED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %32

20:                                               ; preds = %15
  %21 = load %struct.bts_ctx*, %struct.bts_ctx** %1, align 8
  %22 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.bts_ctx*, %struct.bts_ctx** %1, align 8
  %28 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @__bts_event_start(i64 %30)
  br label %32

32:                                               ; preds = %14, %19, %26, %20
  ret void
}

declare dso_local %struct.bts_ctx* @this_cpu_ptr(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__bts_event_start(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
