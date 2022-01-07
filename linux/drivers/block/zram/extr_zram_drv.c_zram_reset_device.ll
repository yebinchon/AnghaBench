; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { i32, i32, %struct.TYPE_2__*, i64, %struct.zcomp*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.zcomp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zram*)* @zram_reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zram_reset_device(%struct.zram* %0) #0 {
  %2 = alloca %struct.zram*, align 8
  %3 = alloca %struct.zcomp*, align 8
  %4 = alloca i64, align 8
  store %struct.zram* %0, %struct.zram** %2, align 8
  %5 = load %struct.zram*, %struct.zram** %2, align 8
  %6 = getelementptr inbounds %struct.zram, %struct.zram* %5, i32 0, i32 1
  %7 = call i32 @down_write(i32* %6)
  %8 = load %struct.zram*, %struct.zram** %2, align 8
  %9 = getelementptr inbounds %struct.zram, %struct.zram* %8, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = load %struct.zram*, %struct.zram** %2, align 8
  %11 = call i32 @init_done(%struct.zram* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.zram*, %struct.zram** %2, align 8
  %15 = getelementptr inbounds %struct.zram, %struct.zram* %14, i32 0, i32 1
  %16 = call i32 @up_write(i32* %15)
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.zram*, %struct.zram** %2, align 8
  %19 = getelementptr inbounds %struct.zram, %struct.zram* %18, i32 0, i32 4
  %20 = load %struct.zcomp*, %struct.zcomp** %19, align 8
  store %struct.zcomp* %20, %struct.zcomp** %3, align 8
  %21 = load %struct.zram*, %struct.zram** %2, align 8
  %22 = getelementptr inbounds %struct.zram, %struct.zram* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  %24 = load %struct.zram*, %struct.zram** %2, align 8
  %25 = getelementptr inbounds %struct.zram, %struct.zram* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.zram*, %struct.zram** %2, align 8
  %27 = getelementptr inbounds %struct.zram, %struct.zram* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 @set_capacity(%struct.TYPE_2__* %28, i32 0)
  %30 = load %struct.zram*, %struct.zram** %2, align 8
  %31 = getelementptr inbounds %struct.zram, %struct.zram* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @part_stat_set_all(i32* %33, i32 0)
  %35 = load %struct.zram*, %struct.zram** %2, align 8
  %36 = getelementptr inbounds %struct.zram, %struct.zram* %35, i32 0, i32 1
  %37 = call i32 @up_write(i32* %36)
  %38 = load %struct.zram*, %struct.zram** %2, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @zram_meta_free(%struct.zram* %38, i64 %39)
  %41 = load %struct.zram*, %struct.zram** %2, align 8
  %42 = getelementptr inbounds %struct.zram, %struct.zram* %41, i32 0, i32 0
  %43 = call i32 @memset(i32* %42, i32 0, i32 4)
  %44 = load %struct.zcomp*, %struct.zcomp** %3, align 8
  %45 = call i32 @zcomp_destroy(%struct.zcomp* %44)
  %46 = load %struct.zram*, %struct.zram** %2, align 8
  %47 = call i32 @reset_bdev(%struct.zram* %46)
  br label %48

48:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @init_done(%struct.zram*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @set_capacity(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @part_stat_set_all(i32*, i32) #1

declare dso_local i32 @zram_meta_free(%struct.zram*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @zcomp_destroy(%struct.zcomp*) #1

declare dso_local i32 @reset_bdev(%struct.zram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
