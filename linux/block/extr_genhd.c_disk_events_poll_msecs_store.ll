; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_events_poll_msecs_store.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_events_poll_msecs_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gendisk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @disk_events_poll_msecs_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @disk_events_poll_msecs_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gendisk*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.gendisk* @dev_to_disk(%struct.device* %12)
  store %struct.gendisk* %13, %struct.gendisk** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %11)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %51

23:                                               ; preds = %16
  %24 = load i64, i64* %11, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %51

32:                                               ; preds = %26, %23
  %33 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %34 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* @ENODEV, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %51

40:                                               ; preds = %32
  %41 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %42 = call i32 @disk_block_events(%struct.gendisk* %41)
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %45 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %43, i64* %47, align 8
  %48 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %49 = call i32 @__disk_unblock_events(%struct.gendisk* %48, i32 1)
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %40, %37, %29, %20
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local %struct.gendisk* @dev_to_disk(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @disk_block_events(%struct.gendisk*) #1

declare dso_local i32 @__disk_unblock_events(%struct.gendisk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
