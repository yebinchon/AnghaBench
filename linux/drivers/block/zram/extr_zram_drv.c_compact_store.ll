; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_compact_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_compact_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.zram = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @compact_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compact_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zram*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.zram* @dev_to_zram(%struct.device* %11)
  store %struct.zram* %12, %struct.zram** %10, align 8
  %13 = load %struct.zram*, %struct.zram** %10, align 8
  %14 = getelementptr inbounds %struct.zram, %struct.zram* %13, i32 0, i32 0
  %15 = call i32 @down_read(i32* %14)
  %16 = load %struct.zram*, %struct.zram** %10, align 8
  %17 = call i32 @init_done(%struct.zram* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load %struct.zram*, %struct.zram** %10, align 8
  %21 = getelementptr inbounds %struct.zram, %struct.zram* %20, i32 0, i32 0
  %22 = call i32 @up_read(i32* %21)
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %34

25:                                               ; preds = %4
  %26 = load %struct.zram*, %struct.zram** %10, align 8
  %27 = getelementptr inbounds %struct.zram, %struct.zram* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @zs_compact(i32 %28)
  %30 = load %struct.zram*, %struct.zram** %10, align 8
  %31 = getelementptr inbounds %struct.zram, %struct.zram* %30, i32 0, i32 0
  %32 = call i32 @up_read(i32* %31)
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %25, %19
  %35 = load i64, i64* %5, align 8
  ret i64 %35
}

declare dso_local %struct.zram* @dev_to_zram(%struct.device*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @init_done(%struct.zram*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @zs_compact(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
