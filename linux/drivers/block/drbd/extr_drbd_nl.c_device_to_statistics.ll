; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_device_to_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_device_to_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_statistics = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.drbd_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.drbd_md }
%struct.drbd_md = type { i32, i32, i64* }
%struct.request_queue = type { i32 }

@UI_CURRENT = common dso_local global i64 0, align 8
@UI_HISTORY_END = common dso_local global i64 0, align 8
@UI_HISTORY_START = common dso_local global i64 0, align 8
@HISTORY_UUIDS = common dso_local global i32 0, align 4
@WB_async_congested = common dso_local global i32 0, align 4
@WB_sync_congested = common dso_local global i32 0, align 4
@AL_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_statistics*, %struct.drbd_device*)* @device_to_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_to_statistics(%struct.device_statistics* %0, %struct.drbd_device* %1) #0 {
  %3 = alloca %struct.device_statistics*, align 8
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca %struct.drbd_md*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.device_statistics* %0, %struct.device_statistics** %3, align 8
  store %struct.drbd_device* %1, %struct.drbd_device** %4, align 8
  %9 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %10 = call i32 @memset(%struct.device_statistics* %9, i32 0, i32 80)
  %11 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %12 = call i32 @may_inc_ap_bio(%struct.drbd_device* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %17 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %19 = call i64 @get_ldev(%struct.drbd_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %117

21:                                               ; preds = %2
  %22 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %23 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %22, i32 0, i32 9
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store %struct.drbd_md* %25, %struct.drbd_md** %5, align 8
  %26 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %27 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %26, i32 0, i32 14
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i64*
  store i64* %29, i64** %6, align 8
  %30 = load %struct.drbd_md*, %struct.drbd_md** %5, align 8
  %31 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %30, i32 0, i32 1
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.drbd_md*, %struct.drbd_md** %5, align 8
  %34 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @UI_CURRENT, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %40 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %39, i32 0, i32 13
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* @UI_HISTORY_END, align 8
  %42 = load i64, i64* @UI_HISTORY_START, align 8
  %43 = sub i64 %41, %42
  %44 = add i64 %43, 1
  %45 = icmp ult i64 8, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUILD_BUG_ON(i32 %46)
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %70, %21
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @UI_HISTORY_END, align 8
  %52 = load i64, i64* @UI_HISTORY_START, align 8
  %53 = sub i64 %51, %52
  %54 = add i64 %53, 1
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %48
  %57 = load %struct.drbd_md*, %struct.drbd_md** %5, align 8
  %58 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @UI_HISTORY_START, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %60, %62
  %64 = getelementptr inbounds i64, i64* %59, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 %65, i64* %69, align 8
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %48

73:                                               ; preds = %48
  br label %74

74:                                               ; preds = %83, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @HISTORY_UUIDS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i64*, i64** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %74

86:                                               ; preds = %74
  %87 = load i32, i32* @HISTORY_UUIDS, align 4
  %88 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %89 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.drbd_md*, %struct.drbd_md** %5, align 8
  %91 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock_irq(i32* %91)
  %93 = load %struct.drbd_md*, %struct.drbd_md** %5, align 8
  %94 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %97 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %96, i32 0, i32 12
  store i32 %95, i32* %97, align 8
  %98 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %99 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %98, i32 0, i32 9
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.request_queue* @bdev_get_queue(i32 %102)
  store %struct.request_queue* %103, %struct.request_queue** %7, align 8
  %104 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %105 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @WB_async_congested, align 4
  %108 = shl i32 1, %107
  %109 = load i32, i32* @WB_sync_congested, align 4
  %110 = shl i32 1, %109
  %111 = or i32 %108, %110
  %112 = call i32 @bdi_congested(i32 %106, i32 %111)
  %113 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %114 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %113, i32 0, i32 11
  store i32 %112, i32* %114, align 4
  %115 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %116 = call i32 @put_ldev(%struct.drbd_device* %115)
  br label %117

117:                                              ; preds = %86, %2
  %118 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %119 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @drbd_get_capacity(i32 %120)
  %122 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %123 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %122, i32 0, i32 10
  store i32 %121, i32* %123, align 8
  %124 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %125 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %128 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %127, i32 0, i32 9
  store i32 %126, i32* %128, align 4
  %129 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %130 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %133 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %132, i32 0, i32 8
  store i32 %131, i32* %133, align 8
  %134 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %135 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %138 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %137, i32 0, i32 7
  store i32 %136, i32* %138, align 4
  %139 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %140 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %143 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 8
  %144 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %145 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %144, i32 0, i32 3
  %146 = call i8* @atomic_read(i32* %145)
  %147 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %148 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %147, i32 0, i32 5
  store i8* %146, i8** %148, align 8
  %149 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %150 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %149, i32 0, i32 2
  %151 = call i8* @atomic_read(i32* %150)
  %152 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %153 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %152, i32 0, i32 4
  store i8* %151, i8** %153, align 8
  %154 = load i32, i32* @AL_SUSPENDED, align 4
  %155 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %156 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %155, i32 0, i32 1
  %157 = call i32 @test_bit(i32 %154, i32* %156)
  %158 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %159 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %161 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.device_statistics*, %struct.device_statistics** %3, align 8
  %164 = getelementptr inbounds %struct.device_statistics, %struct.device_statistics* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  ret void
}

declare dso_local i32 @memset(%struct.device_statistics*, i32, i32) #1

declare dso_local i32 @may_inc_ap_bio(%struct.drbd_device*) #1

declare dso_local i64 @get_ldev(%struct.drbd_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @bdi_congested(i32, i32) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @drbd_get_capacity(i32) #1

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
