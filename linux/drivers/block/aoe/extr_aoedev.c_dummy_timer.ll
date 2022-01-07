; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoedev.c_dummy_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoedev.c_dummy_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }
%struct.aoedev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@timer = common dso_local global i32 0, align 4
@DEVFL_TKILL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dummy_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dummy_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.aoedev*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %5 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %6 = load i32, i32* @timer, align 4
  %7 = call %struct.aoedev* @from_timer(%struct.aoedev* %4, %struct.timer_list* %5, i32 %6)
  store %struct.aoedev* %7, %struct.aoedev** %3, align 8
  %8 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %9 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DEVFL_TKILL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %25

15:                                               ; preds = %1
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i64, i64* @HZ, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %20 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %23 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %22, i32 0, i32 1
  %24 = call i32 @add_timer(%struct.TYPE_2__* %23)
  br label %25

25:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.aoedev* @from_timer(%struct.aoedev*, %struct.timer_list*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
