; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_v1_header_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_v1_header_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, i32 }
%struct.rbd_image_header_ondisk = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"short header read (want %zd got %d)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @rbd_dev_v1_header_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_dev_v1_header_info(%struct.rbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca %struct.rbd_image_header_ondisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  store %struct.rbd_image_header_ondisk* null, %struct.rbd_image_header_ondisk** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %72, %1
  %11 = load %struct.rbd_image_header_ondisk*, %struct.rbd_image_header_ondisk** %4, align 8
  %12 = call i32 @kfree(%struct.rbd_image_header_ondisk* %11)
  store i64 8, i64* %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = load i64, i64* %9, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.rbd_image_header_ondisk* @kmalloc(i64 %21, i32 %22)
  store %struct.rbd_image_header_ondisk* %23, %struct.rbd_image_header_ondisk** %4, align 8
  %24 = load %struct.rbd_image_header_ondisk*, %struct.rbd_image_header_ondisk** %4, align 8
  %25 = icmp ne %struct.rbd_image_header_ondisk* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %10
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %84

29:                                               ; preds = %10
  %30 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %31 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %32 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %31, i32 0, i32 1
  %33 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %34 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %33, i32 0, i32 0
  %35 = load %struct.rbd_image_header_ondisk*, %struct.rbd_image_header_ondisk** %4, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @rbd_obj_read_sync(%struct.rbd_device* %30, i32* %32, i32* %34, %struct.rbd_image_header_ondisk* %35, i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %80

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (%struct.rbd_device*, i8*, ...) @rbd_warn(%struct.rbd_device* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %50, i32 %51)
  br label %80

53:                                               ; preds = %41
  %54 = load %struct.rbd_image_header_ondisk*, %struct.rbd_image_header_ondisk** %4, align 8
  %55 = call i32 @rbd_dev_ondisk_valid(%struct.rbd_image_header_ondisk* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @ENXIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  %60 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %61 = call i32 (%struct.rbd_device*, i8*, ...) @rbd_warn(%struct.rbd_device* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %80

62:                                               ; preds = %53
  %63 = load %struct.rbd_image_header_ondisk*, %struct.rbd_image_header_ondisk** %4, align 8
  %64 = getelementptr inbounds %struct.rbd_image_header_ondisk, %struct.rbd_image_header_ondisk* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @le64_to_cpu(i32 %65)
  store i64 %66, i64* %6, align 8
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %7, align 4
  %68 = load %struct.rbd_image_header_ondisk*, %struct.rbd_image_header_ondisk** %4, align 8
  %69 = getelementptr inbounds %struct.rbd_image_header_ondisk, %struct.rbd_image_header_ondisk* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %10, label %76

76:                                               ; preds = %72
  %77 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %78 = load %struct.rbd_image_header_ondisk*, %struct.rbd_image_header_ondisk** %4, align 8
  %79 = call i32 @rbd_header_from_disk(%struct.rbd_device* %77, %struct.rbd_image_header_ondisk* %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %57, %46, %40
  %81 = load %struct.rbd_image_header_ondisk*, %struct.rbd_image_header_ondisk** %4, align 8
  %82 = call i32 @kfree(%struct.rbd_image_header_ondisk* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %26
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @kfree(%struct.rbd_image_header_ondisk*) #1

declare dso_local %struct.rbd_image_header_ondisk* @kmalloc(i64, i32) #1

declare dso_local i32 @rbd_obj_read_sync(%struct.rbd_device*, i32*, i32*, %struct.rbd_image_header_ondisk*, i64) #1

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, ...) #1

declare dso_local i32 @rbd_dev_ondisk_valid(%struct.rbd_image_header_ondisk*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @rbd_header_from_disk(%struct.rbd_device*, %struct.rbd_image_header_ondisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
