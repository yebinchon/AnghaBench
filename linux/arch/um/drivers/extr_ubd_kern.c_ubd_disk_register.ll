; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_kern.c_ubd_disk_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_kern.c_ubd_disk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.device, i32 }
%struct.device = type { i32 }
%struct.gendisk = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32* }

@UBD_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ubd_blops = common dso_local global i32 0, align 4
@UBD_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ubd%c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ubd_fake%d\00", align 1
@ubd_devs = common dso_local global %struct.TYPE_4__* null, align 8
@DRIVER_NAME = common dso_local global i32 0, align 4
@ubd_device_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.gendisk**)* @ubd_disk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubd_disk_register(i32 %0, i32 %1, i32 %2, %struct.gendisk** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gendisk**, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.gendisk*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.gendisk** %3, %struct.gendisk*** %9, align 8
  store %struct.device* null, %struct.device** %10, align 8
  %12 = load i32, i32* @UBD_SHIFT, align 4
  %13 = shl i32 1, %12
  %14 = call %struct.gendisk* @alloc_disk(i32 %13)
  store %struct.gendisk* %14, %struct.gendisk** %11, align 8
  %15 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %16 = icmp eq %struct.gendisk* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %121

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %23 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @UBD_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %28 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %30 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %29, i32 0, i32 5
  store i32* @ubd_blops, i32** %30, align 8
  %31 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sdiv i32 %32, 512
  %34 = call i32 @set_capacity(%struct.gendisk* %31, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @UBD_MAJOR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %20
  %39 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %40 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 97, %42
  %44 = call i32 @sprintf(i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %51

45:                                               ; preds = %20
  %46 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %47 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @sprintf(i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %38
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @UBD_MAJOR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %101

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ubd_devs, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %56, i32* %62, align 4
  %63 = load i32, i32* @DRIVER_NAME, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ubd_devs, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i32 %63, i32* %69, align 4
  %70 = load i32, i32* @ubd_device_release, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ubd_devs, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.device, %struct.device* %76, i32 0, i32 0
  store i32 %70, i32* %77, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ubd_devs, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ubd_devs, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = call i32 @dev_set_drvdata(%struct.device* %83, %struct.TYPE_4__* %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ubd_devs, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = call i32 @platform_device_register(%struct.TYPE_5__* %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ubd_devs, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store %struct.device* %100, %struct.device** %10, align 8
  br label %101

101:                                              ; preds = %55, %51
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ubd_devs, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %107 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %106, i32 0, i32 3
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %107, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ubd_devs, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %115 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.device*, %struct.device** %10, align 8
  %117 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %118 = call i32 @device_add_disk(%struct.device* %116, %struct.gendisk* %117, i32* null)
  %119 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %120 = load %struct.gendisk**, %struct.gendisk*** %9, align 8
  store %struct.gendisk* %119, %struct.gendisk** %120, align 8
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %101, %17
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @device_add_disk(%struct.device*, %struct.gendisk*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
