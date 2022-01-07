; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-engine.c_update_idle_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-engine.c_update_idle_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@now = common dso_local global i32 0, align 4
@start_time = common dso_local global i32 0, align 4
@tot_idle_time = common dso_local global i32 0, align 4
@wstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@a_idle_quotient = common dso_local global i32 0, align 4
@a_idle_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_idle_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_idle_stats() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @now, align 4
  %3 = load i32, i32* @start_time, align 4
  %4 = sub nsw i32 %2, %3
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @tot_idle_time, align 4
  %9 = load i32, i32* %1, align 4
  %10 = sdiv i32 %8, %9
  %11 = mul nsw i32 %10, 100
  br label %13

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %12, %7
  %14 = phi i32 [ %11, %7 ], [ 0, %12 ]
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wstat, i32 0, i32 1), align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wstat, i32 0, i32 0), align 4
  %15 = load i32, i32* @a_idle_quotient, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* @a_idle_time, align 4
  %19 = load i32, i32* @a_idle_quotient, align 4
  %20 = sdiv i32 %18, %19
  %21 = mul nsw i32 %20, 100
  br label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @a_idle_time, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi i32 [ %21, %17 ], [ %23, %22 ]
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wstat, i32 0, i32 3), align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wstat, i32 0, i32 2), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
