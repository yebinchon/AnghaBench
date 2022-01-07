; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_device_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_device_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@single_major = common dso_local global i32 0, align 4
@rbd_major = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@RBD_DEV_FLAG_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @rbd_dev_device_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_dev_device_setup(%struct.rbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  %5 = load i32, i32* @single_major, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %9 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @register_blkdev(i32 0, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %89

15:                                               ; preds = %7
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %18 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %20 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %19, i32 0, i32 9
  store i64 0, i64* %20, align 8
  br label %31

21:                                               ; preds = %1
  %22 = load i32, i32* @rbd_major, align 4
  %23 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %24 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %26 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @rbd_dev_id_to_minor(i32 %27)
  %29 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %30 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %29, i32 0, i32 9
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %21, %15
  %32 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %33 = call i32 @rbd_init_disk(%struct.rbd_device* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %77

37:                                               ; preds = %31
  %38 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %39 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %42 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SECTOR_SIZE, align 4
  %46 = sdiv i32 %44, %45
  %47 = call i32 @set_capacity(i32 %40, i32 %46)
  %48 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %49 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %52 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %51, i32 0, i32 6
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @set_disk_ro(i32 %50, i32 %55)
  %57 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %58 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %57, i32 0, i32 5
  %59 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %60 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_set_name(i32* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %37
  br label %74

66:                                               ; preds = %37
  %67 = load i32, i32* @RBD_DEV_FLAG_EXISTS, align 4
  %68 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %69 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %68, i32 0, i32 3
  %70 = call i32 @set_bit(i32 %67, i32* %69)
  %71 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %72 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %71, i32 0, i32 1
  %73 = call i32 @up_write(i32* %72)
  store i32 0, i32* %2, align 4
  br label %94

74:                                               ; preds = %65
  %75 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %76 = call i32 @rbd_free_disk(%struct.rbd_device* %75)
  br label %77

77:                                               ; preds = %74, %36
  %78 = load i32, i32* @single_major, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %82 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %85 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @unregister_blkdev(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %80, %77
  br label %89

89:                                               ; preds = %88, %14
  %90 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %91 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %90, i32 0, i32 1
  %92 = call i32 @up_write(i32* %91)
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %89, %66
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @register_blkdev(i32, i32) #1

declare dso_local i64 @rbd_dev_id_to_minor(i32) #1

declare dso_local i32 @rbd_init_disk(%struct.rbd_device*) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @set_disk_ro(i32, i32) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @rbd_free_disk(%struct.rbd_device*) #1

declare dso_local i32 @unregister_blkdev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
