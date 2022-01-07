; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blkdev_report_zone.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blkdev_report_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.blk_zone = type { i64, i64, i64, i64 }

@BLK_ZONE_TYPE_CONVENTIONAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.blk_zone*)* @blkdev_report_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkdev_report_zone(%struct.block_device* %0, %struct.blk_zone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.blk_zone*, align 8
  %6 = alloca i64, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store %struct.blk_zone* %1, %struct.blk_zone** %5, align 8
  %7 = load %struct.block_device*, %struct.block_device** %4, align 8
  %8 = call i64 @get_start_sect(%struct.block_device* %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.blk_zone*, %struct.blk_zone** %5, align 8
  %10 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.blk_zone*, %struct.blk_zone** %5, align 8
  %18 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, %16
  store i64 %20, i64* %18, align 8
  %21 = load %struct.blk_zone*, %struct.blk_zone** %5, align 8
  %22 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.blk_zone*, %struct.blk_zone** %5, align 8
  %25 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.block_device*, %struct.block_device** %4, align 8
  %29 = getelementptr inbounds %struct.block_device, %struct.block_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %27, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %58

35:                                               ; preds = %15
  %36 = load %struct.blk_zone*, %struct.blk_zone** %5, align 8
  %37 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BLK_ZONE_TYPE_CONVENTIONAL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.blk_zone*, %struct.blk_zone** %5, align 8
  %43 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.blk_zone*, %struct.blk_zone** %5, align 8
  %46 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load %struct.blk_zone*, %struct.blk_zone** %5, align 8
  %50 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  br label %57

51:                                               ; preds = %35
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.blk_zone*, %struct.blk_zone** %5, align 8
  %54 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %51, %41
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %34, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @get_start_sect(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
