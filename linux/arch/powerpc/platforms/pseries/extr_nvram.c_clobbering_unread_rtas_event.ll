; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_nvram.c_clobbering_unread_rtas_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_nvram.c_clobbering_unread_rtas_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@oops_log_partition = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@rtas_log_partition = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@last_unread_rtas_event = common dso_local global i64 0, align 8
@NVRAM_RTAS_READ_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clobbering_unread_rtas_event() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @oops_log_partition, i32 0, i32 0), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rtas_log_partition, i32 0, i32 0), align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i64, i64* @last_unread_rtas_event, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = call i64 (...) @ktime_get_real_seconds()
  %9 = load i64, i64* @last_unread_rtas_event, align 8
  %10 = sub nsw i64 %8, %9
  %11 = load i64, i64* @NVRAM_RTAS_READ_TIMEOUT, align 8
  %12 = icmp sle i64 %10, %11
  br label %13

13:                                               ; preds = %7, %4, %0
  %14 = phi i1 [ false, %4 ], [ false, %0 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i64 @ktime_get_real_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
