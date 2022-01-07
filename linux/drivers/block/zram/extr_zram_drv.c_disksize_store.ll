; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_disksize_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_disksize_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.zcomp = type { i32 }
%struct.zram = type { i32, i32, i32, %struct.zcomp*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Cannot change disksize for initialized device\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Cannot initialise %s compressing backend\0A\00", align 1
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @disksize_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @disksize_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.zcomp*, align 8
  %12 = alloca %struct.zram*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.zram* @dev_to_zram(%struct.device* %14)
  store %struct.zram* %15, %struct.zram** %12, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @memparse(i8* %16, i32* null)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %93

23:                                               ; preds = %4
  %24 = load %struct.zram*, %struct.zram** %12, align 8
  %25 = getelementptr inbounds %struct.zram, %struct.zram* %24, i32 0, i32 1
  %26 = call i32 @down_write(i32* %25)
  %27 = load %struct.zram*, %struct.zram** %12, align 8
  %28 = call i64 @init_done(%struct.zram* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  br label %87

34:                                               ; preds = %23
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @PAGE_ALIGN(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.zram*, %struct.zram** %12, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @zram_meta_alloc(%struct.zram* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %13, align 4
  br label %87

44:                                               ; preds = %34
  %45 = load %struct.zram*, %struct.zram** %12, align 8
  %46 = getelementptr inbounds %struct.zram, %struct.zram* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.zcomp* @zcomp_create(i32 %47)
  store %struct.zcomp* %48, %struct.zcomp** %11, align 8
  %49 = load %struct.zcomp*, %struct.zcomp** %11, align 8
  %50 = call i64 @IS_ERR(%struct.zcomp* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load %struct.zram*, %struct.zram** %12, align 8
  %54 = getelementptr inbounds %struct.zram, %struct.zram* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.zcomp*, %struct.zcomp** %11, align 8
  %58 = call i32 @PTR_ERR(%struct.zcomp* %57)
  store i32 %58, i32* %13, align 4
  br label %83

59:                                               ; preds = %44
  %60 = load %struct.zcomp*, %struct.zcomp** %11, align 8
  %61 = load %struct.zram*, %struct.zram** %12, align 8
  %62 = getelementptr inbounds %struct.zram, %struct.zram* %61, i32 0, i32 3
  store %struct.zcomp* %60, %struct.zcomp** %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.zram*, %struct.zram** %12, align 8
  %65 = getelementptr inbounds %struct.zram, %struct.zram* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.zram*, %struct.zram** %12, align 8
  %67 = getelementptr inbounds %struct.zram, %struct.zram* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.zram*, %struct.zram** %12, align 8
  %70 = getelementptr inbounds %struct.zram, %struct.zram* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SECTOR_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = call i32 @set_capacity(i32 %68, i32 %73)
  %75 = load %struct.zram*, %struct.zram** %12, align 8
  %76 = getelementptr inbounds %struct.zram, %struct.zram* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @revalidate_disk(i32 %77)
  %79 = load %struct.zram*, %struct.zram** %12, align 8
  %80 = getelementptr inbounds %struct.zram, %struct.zram* %79, i32 0, i32 1
  %81 = call i32 @up_write(i32* %80)
  %82 = load i64, i64* %9, align 8
  store i64 %82, i64* %5, align 8
  br label %93

83:                                               ; preds = %52
  %84 = load %struct.zram*, %struct.zram** %12, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @zram_meta_free(%struct.zram* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %41, %30
  %88 = load %struct.zram*, %struct.zram** %12, align 8
  %89 = getelementptr inbounds %struct.zram, %struct.zram* %88, i32 0, i32 1
  %90 = call i32 @up_write(i32* %89)
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %87, %59, %20
  %94 = load i64, i64* %5, align 8
  ret i64 %94
}

declare dso_local %struct.zram* @dev_to_zram(%struct.device*) #1

declare dso_local i32 @memparse(i8*, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @init_done(%struct.zram*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @zram_meta_alloc(%struct.zram*, i32) #1

declare dso_local %struct.zcomp* @zcomp_create(i32) #1

declare dso_local i64 @IS_ERR(%struct.zcomp*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.zcomp*) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @revalidate_disk(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @zram_meta_free(%struct.zram*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
