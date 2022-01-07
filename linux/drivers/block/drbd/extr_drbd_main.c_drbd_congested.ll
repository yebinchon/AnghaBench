; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_congested.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i8, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.request_queue = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@CALLBACK_PENDING = common dso_local global i32 0, align 4
@WB_async_congested = common dso_local global i32 0, align 4
@D_UP_TO_DATE = common dso_local global i32 0, align 4
@WB_sync_congested = common dso_local global i32 0, align 4
@NET_CONGESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @drbd_congested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_congested(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.drbd_device*
  store %struct.drbd_device* %10, %struct.drbd_device** %5, align 8
  store i8 45, i8* %7, align 1
  store i32 0, i32* %8, align 4
  %11 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %12 = call i32 @may_inc_ap_bio(%struct.drbd_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %8, align 4
  store i8 100, i8* %7, align 1
  br label %95

16:                                               ; preds = %2
  %17 = load i32, i32* @CALLBACK_PENDING, align 4
  %18 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %19 = call %struct.TYPE_6__* @first_peer_device(%struct.drbd_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %17, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %16
  %26 = load i32, i32* @WB_async_congested, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %31 = load i32, i32* @D_UP_TO_DATE, align 4
  %32 = call i32 @get_ldev_if_state(%struct.drbd_device* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @WB_sync_congested, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %42

39:                                               ; preds = %25
  %40 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %41 = call i32 @put_ldev(%struct.drbd_device* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  store i8 99, i8* %7, align 1
  br label %95

46:                                               ; preds = %16
  %47 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %48 = call i64 @get_ldev(%struct.drbd_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %52 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.request_queue* @bdev_get_queue(i32 %55)
  store %struct.request_queue* %56, %struct.request_queue** %6, align 8
  %57 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %58 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @bdi_congested(i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %63 = call i32 @put_ldev(%struct.drbd_device* %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  store i8 98, i8* %7, align 1
  br label %67

67:                                               ; preds = %66, %50
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @WB_async_congested, align 4
  %71 = shl i32 1, %70
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %68
  %75 = load i32, i32* @NET_CONGESTED, align 4
  %76 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %77 = call %struct.TYPE_6__* @first_peer_device(%struct.drbd_device* %76)
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i64 @test_bit(i32 %75, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %74
  %84 = load i32, i32* @WB_async_congested, align 4
  %85 = shl i32 1, %84
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i8, i8* %7, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 98
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 97, i32 110
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %7, align 1
  br label %94

94:                                               ; preds = %83, %74, %68
  br label %95

95:                                               ; preds = %94, %42, %14
  %96 = load i8, i8* %7, align 1
  %97 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %98 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %97, i32 0, i32 0
  store i8 %96, i8* %98, align 8
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local i32 @may_inc_ap_bio(%struct.drbd_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i32 @get_ldev_if_state(%struct.drbd_device*, i32) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i64 @get_ldev(%struct.drbd_device*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @bdi_congested(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
