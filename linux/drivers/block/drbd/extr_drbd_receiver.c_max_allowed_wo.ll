; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_max_allowed_wo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_max_allowed_wo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_backing_dev = type { i32 }
%struct.disk_conf = type { i32, i32 }

@WO_BDEV_FLUSH = common dso_local global i32 0, align 4
@WO_DRAIN_IO = common dso_local global i32 0, align 4
@WO_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_backing_dev*, i32)* @max_allowed_wo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_allowed_wo(%struct.drbd_backing_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.drbd_backing_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.disk_conf*, align 8
  store %struct.drbd_backing_dev* %0, %struct.drbd_backing_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drbd_backing_dev*, %struct.drbd_backing_dev** %3, align 8
  %7 = getelementptr inbounds %struct.drbd_backing_dev, %struct.drbd_backing_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.disk_conf* @rcu_dereference(i32 %8)
  store %struct.disk_conf* %9, %struct.disk_conf** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @WO_BDEV_FLUSH, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.disk_conf*, %struct.disk_conf** %5, align 8
  %15 = getelementptr inbounds %struct.disk_conf, %struct.disk_conf* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @WO_DRAIN_IO, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %18, %13, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @WO_DRAIN_IO, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.disk_conf*, %struct.disk_conf** %5, align 8
  %26 = getelementptr inbounds %struct.disk_conf, %struct.disk_conf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @WO_NONE, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %24, %20
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.disk_conf* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
