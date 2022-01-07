; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_fast-classifier.c_fast_classifier_inet6_event.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_fast-classifier.c_fast_classifier_inet6_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.inet6_ifaddr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }

@NETDEV_DOWN = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @fast_classifier_inet6_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_classifier_inet6_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.inet6_ifaddr*
  %10 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @NETDEV_DOWN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = call i32 @sfe_ipv6_destroy_all_rules_for_dev(%struct.net_device* %21)
  br label %23

23:                                               ; preds = %20, %16, %3
  %24 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %24
}

declare dso_local i32 @sfe_ipv6_destroy_all_rules_for_dev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
