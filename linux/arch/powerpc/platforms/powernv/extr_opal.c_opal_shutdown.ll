; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal.c_opal_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal.c_opal_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPAL_BUSY = common dso_local global i64 0, align 8
@OPAL_BUSY_EVENT = common dso_local global i64 0, align 8
@OPAL_UNREGISTER_DUMP_REGION = common dso_local global i32 0, align 4
@OPAL_DUMP_REGION_LOG_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opal_shutdown() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @OPAL_BUSY, align 8
  store i64 %2, i64* %1, align 8
  %3 = call i32 (...) @opal_event_shutdown()
  br label %4

4:                                                ; preds = %23, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @OPAL_BUSY, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @OPAL_BUSY_EVENT, align 8
  %11 = icmp eq i64 %9, %10
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i1 [ true, %4 ], [ %11, %8 ]
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = call i64 (...) @opal_sync_host_reboot()
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @OPAL_BUSY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @opal_poll_events(i32* null)
  br label %23

21:                                               ; preds = %14
  %22 = call i32 @mdelay(i32 10)
  br label %23

23:                                               ; preds = %21, %19
  br label %4

24:                                               ; preds = %12
  %25 = load i32, i32* @OPAL_UNREGISTER_DUMP_REGION, align 4
  %26 = call i64 @opal_check_token(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @OPAL_DUMP_REGION_LOG_BUF, align 4
  %30 = call i32 @opal_unregister_dump_region(i32 %29)
  br label %31

31:                                               ; preds = %28, %24
  ret void
}

declare dso_local i32 @opal_event_shutdown(...) #1

declare dso_local i64 @opal_sync_host_reboot(...) #1

declare dso_local i32 @opal_poll_events(i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @opal_check_token(i32) #1

declare dso_local i32 @opal_unregister_dump_region(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
