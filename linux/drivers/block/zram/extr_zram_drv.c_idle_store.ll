; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_idle_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_idle_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.zram = type { i64, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ZRAM_UNDER_WB = common dso_local global i32 0, align 4
@ZRAM_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @idle_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @idle_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zram*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.zram* @dev_to_zram(%struct.device* %13)
  store %struct.zram* %14, %struct.zram** %10, align 8
  %15 = load %struct.zram*, %struct.zram** %10, align 8
  %16 = getelementptr inbounds %struct.zram, %struct.zram* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @sysfs_streq(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %76

26:                                               ; preds = %4
  %27 = load %struct.zram*, %struct.zram** %10, align 8
  %28 = getelementptr inbounds %struct.zram, %struct.zram* %27, i32 0, i32 1
  %29 = call i32 @down_read(i32* %28)
  %30 = load %struct.zram*, %struct.zram** %10, align 8
  %31 = call i32 @init_done(%struct.zram* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load %struct.zram*, %struct.zram** %10, align 8
  %35 = getelementptr inbounds %struct.zram, %struct.zram* %34, i32 0, i32 1
  %36 = call i32 @up_read(i32* %35)
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %76

39:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %68, %39
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %11, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %40
  %46 = load %struct.zram*, %struct.zram** %10, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @zram_slot_lock(%struct.zram* %46, i32 %47)
  %49 = load %struct.zram*, %struct.zram** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @zram_allocated(%struct.zram* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %45
  %54 = load %struct.zram*, %struct.zram** %10, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @ZRAM_UNDER_WB, align 4
  %57 = call i32 @zram_test_flag(%struct.zram* %54, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load %struct.zram*, %struct.zram** %10, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @ZRAM_IDLE, align 4
  %63 = call i32 @zram_set_flag(%struct.zram* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %53, %45
  %65 = load %struct.zram*, %struct.zram** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @zram_slot_unlock(%struct.zram* %65, i32 %66)
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %40

71:                                               ; preds = %40
  %72 = load %struct.zram*, %struct.zram** %10, align 8
  %73 = getelementptr inbounds %struct.zram, %struct.zram* %72, i32 0, i32 1
  %74 = call i32 @up_read(i32* %73)
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %71, %33, %23
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local %struct.zram* @dev_to_zram(%struct.device*) #1

declare dso_local i32 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @init_done(%struct.zram*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @zram_slot_lock(%struct.zram*, i32) #1

declare dso_local i64 @zram_allocated(%struct.zram*, i32) #1

declare dso_local i32 @zram_test_flag(%struct.zram*, i32, i32) #1

declare dso_local i32 @zram_set_flag(%struct.zram*, i32, i32) #1

declare dso_local i32 @zram_slot_unlock(%struct.zram*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
