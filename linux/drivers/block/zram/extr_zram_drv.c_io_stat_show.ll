; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_io_stat_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_io_stat_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.zram = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%8llu %8llu %8llu %8llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @io_stat_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_stat_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.zram*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.zram* @dev_to_zram(%struct.device* %9)
  store %struct.zram* %10, %struct.zram** %7, align 8
  %11 = load %struct.zram*, %struct.zram** %7, align 8
  %12 = getelementptr inbounds %struct.zram, %struct.zram* %11, i32 0, i32 0
  %13 = call i32 @down_read(i32* %12)
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load %struct.zram*, %struct.zram** %7, align 8
  %17 = getelementptr inbounds %struct.zram, %struct.zram* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = call i64 @atomic64_read(i32* %18)
  %20 = trunc i64 %19 to i32
  %21 = load %struct.zram*, %struct.zram** %7, align 8
  %22 = getelementptr inbounds %struct.zram, %struct.zram* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = call i64 @atomic64_read(i32* %23)
  %25 = trunc i64 %24 to i32
  %26 = load %struct.zram*, %struct.zram** %7, align 8
  %27 = getelementptr inbounds %struct.zram, %struct.zram* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i64 @atomic64_read(i32* %28)
  %30 = trunc i64 %29 to i32
  %31 = load %struct.zram*, %struct.zram** %7, align 8
  %32 = getelementptr inbounds %struct.zram, %struct.zram* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i64 @atomic64_read(i32* %33)
  %35 = trunc i64 %34 to i32
  %36 = call i32 @scnprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25, i32 %30, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.zram*, %struct.zram** %7, align 8
  %38 = getelementptr inbounds %struct.zram, %struct.zram* %37, i32 0, i32 0
  %39 = call i32 @up_read(i32* %38)
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local %struct.zram* @dev_to_zram(%struct.device*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
