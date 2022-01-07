; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_remote_due_to_read_balancing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_remote_due_to_read_balancing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32 }

@READ_BALANCE_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*, i32, i32)* @remote_due_to_read_balancing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_due_to_read_balancing(%struct.drbd_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.backing_dev_info*, align 8
  %9 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %54 [
    i32 132, label %11
    i32 131, label %25
    i32 135, label %38
    i32 133, label %38
    i32 138, label %38
    i32 136, label %38
    i32 134, label %38
    i32 137, label %38
    i32 128, label %47
    i32 129, label %52
    i32 130, label %53
  ]

11:                                               ; preds = %3
  %12 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %13 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %12, i32 0, i32 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.backing_dev_info*, %struct.backing_dev_info** %21, align 8
  store %struct.backing_dev_info* %22, %struct.backing_dev_info** %8, align 8
  %23 = load %struct.backing_dev_info*, %struct.backing_dev_info** %8, align 8
  %24 = call i32 @bdi_read_congested(%struct.backing_dev_info* %23)
  store i32 %24, i32* %4, align 4
  br label %55

25:                                               ; preds = %3
  %26 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %27 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %26, i32 0, i32 3
  %28 = call i64 @atomic_read(i32* %27)
  %29 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %30 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %29, i32 0, i32 2
  %31 = call i64 @atomic_read(i32* %30)
  %32 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %33 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %32, i32 0, i32 1
  %34 = call i64 @atomic_read(i32* %33)
  %35 = add nsw i64 %31, %34
  %36 = icmp sgt i64 %28, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %55

38:                                               ; preds = %3, %3, %3, %3, %3, %3
  %39 = load i32, i32* %7, align 4
  %40 = sub i32 %39, 135
  %41 = add i32 %40, 15
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 9
  %45 = ashr i32 %42, %44
  %46 = and i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %55

47:                                               ; preds = %3
  %48 = load i32, i32* @READ_BALANCE_RR, align 4
  %49 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %50 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %49, i32 0, i32 0
  %51 = call i32 @test_and_change_bit(i32 %48, i32* %50)
  store i32 %51, i32* %4, align 4
  br label %55

52:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %55

53:                                               ; preds = %3
  br label %54

54:                                               ; preds = %3, %53
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %52, %47, %38, %25, %11
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @bdi_read_congested(%struct.backing_dev_info*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @test_and_change_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
