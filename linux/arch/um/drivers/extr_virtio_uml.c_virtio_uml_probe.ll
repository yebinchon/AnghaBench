; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_virtio_uml_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_virtio_uml_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.virtio_uml_platform_data* }
%struct.virtio_uml_platform_data = type { i32, i32 }
%struct.virtio_uml_device = type { i32, i32, %struct.TYPE_6__, %struct.platform_device* }
%struct.TYPE_6__ = type { %struct.TYPE_7__, %struct.TYPE_5__, i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@virtio_uml_release_dev = common dso_local global i32 0, align 4
@virtio_uml_config_ops = common dso_local global i32 0, align 4
@VIRTIO_DEV_ANY_ID = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @virtio_uml_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_uml_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.virtio_uml_platform_data*, align 8
  %5 = alloca %struct.virtio_uml_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.virtio_uml_platform_data*, %struct.virtio_uml_platform_data** %9, align 8
  store %struct.virtio_uml_platform_data* %10, %struct.virtio_uml_platform_data** %4, align 8
  %11 = load %struct.virtio_uml_platform_data*, %struct.virtio_uml_platform_data** %4, align 8
  %12 = icmp ne %struct.virtio_uml_platform_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %104

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.virtio_uml_device* @devm_kzalloc(%struct.TYPE_8__* %18, i32 48, i32 %19)
  store %struct.virtio_uml_device* %20, %struct.virtio_uml_device** %5, align 8
  %21 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %22 = icmp ne %struct.virtio_uml_device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %104

26:                                               ; preds = %16
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %30 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %32, align 8
  %33 = load i32, i32* @virtio_uml_release_dev, align 4
  %34 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %35 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %39 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32* @virtio_uml_config_ops, i32** %40, align 8
  %41 = load %struct.virtio_uml_platform_data*, %struct.virtio_uml_platform_data** %4, align 8
  %42 = getelementptr inbounds %struct.virtio_uml_platform_data, %struct.virtio_uml_platform_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %45 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @VIRTIO_DEV_ANY_ID, align 4
  %49 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %50 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %55 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %54, i32 0, i32 3
  store %struct.platform_device* %53, %struct.platform_device** %55, align 8
  %56 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %57 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 8
  br label %58

58:                                               ; preds = %63, %26
  %59 = load %struct.virtio_uml_platform_data*, %struct.virtio_uml_platform_data** %4, align 8
  %60 = getelementptr inbounds %struct.virtio_uml_platform_data, %struct.virtio_uml_platform_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @os_connect_socket(i32 %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @EINTR, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %58, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %104

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %76 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %78 = call i32 @vhost_user_init(%struct.virtio_uml_device* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %98

82:                                               ; preds = %73
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %85 = call i32 @platform_set_drvdata(%struct.platform_device* %83, %struct.virtio_uml_device* %84)
  %86 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %87 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %86, i32 0, i32 2
  %88 = call i32 @register_virtio_device(%struct.TYPE_6__* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %93 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = call i32 @put_device(%struct.TYPE_7__* %94)
  br label %96

96:                                               ; preds = %91, %82
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %104

98:                                               ; preds = %81
  %99 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %100 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @os_close_file(i32 %101)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %98, %96, %71, %23, %13
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.virtio_uml_device* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @os_connect_socket(i32) #1

declare dso_local i32 @vhost_user_init(%struct.virtio_uml_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.virtio_uml_device*) #1

declare dso_local i32 @register_virtio_device(%struct.TYPE_6__*) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

declare dso_local i32 @os_close_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
