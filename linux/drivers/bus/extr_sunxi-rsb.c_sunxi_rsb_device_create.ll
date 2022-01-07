; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_sunxi_rsb_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_sunxi_rsb_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_rsb_device = type { %struct.TYPE_7__, i32, i32, %struct.sunxi_rsb* }
%struct.TYPE_7__ = type { i32, %struct.device_node*, i32, i32* }
%struct.sunxi_rsb = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sunxi_rsb_bus = common dso_local global i32 0, align 4
@sunxi_rsb_dev_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@RSB_CTRL_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't add %s, status %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"device %s registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sunxi_rsb_device* (%struct.sunxi_rsb*, %struct.device_node*, i32, i32)* @sunxi_rsb_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sunxi_rsb_device* @sunxi_rsb_device_create(%struct.sunxi_rsb* %0, %struct.device_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sunxi_rsb_device*, align 8
  %6 = alloca %struct.sunxi_rsb*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sunxi_rsb_device*, align 8
  store %struct.sunxi_rsb* %0, %struct.sunxi_rsb** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sunxi_rsb_device* @kzalloc(i32 48, i32 %12)
  store %struct.sunxi_rsb_device* %13, %struct.sunxi_rsb_device** %11, align 8
  %14 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %15 = icmp ne %struct.sunxi_rsb_device* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.sunxi_rsb_device* @ERR_PTR(i32 %18)
  store %struct.sunxi_rsb_device* %19, %struct.sunxi_rsb_device** %5, align 8
  br label %78

20:                                               ; preds = %4
  %21 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %6, align 8
  %22 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %23 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %22, i32 0, i32 3
  store %struct.sunxi_rsb* %21, %struct.sunxi_rsb** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %26 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %29 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %31 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  store i32* @sunxi_rsb_bus, i32** %32, align 8
  %33 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %6, align 8
  %34 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %37 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %41 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store %struct.device_node* %39, %struct.device_node** %42, align 8
  %43 = load i32, i32* @sunxi_rsb_dev_release, align 4
  %44 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %45 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %48 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %47, i32 0, i32 0
  %49 = load i32, i32* @RSB_CTRL_NAME, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dev_set_name(%struct.TYPE_7__* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %53 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %52, i32 0, i32 0
  %54 = call i32 @device_register(%struct.TYPE_7__* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %20
  %58 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %59 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %58, i32 0, i32 0
  %60 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %61 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %60, i32 0, i32 0
  %62 = call i32 @dev_name(%struct.TYPE_7__* %61)
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @dev_err(%struct.TYPE_7__* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  br label %72

65:                                               ; preds = %20
  %66 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %67 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %66, i32 0, i32 0
  %68 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %69 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %68, i32 0, i32 0
  %70 = call i32 @dev_name(%struct.TYPE_7__* %69)
  %71 = call i32 @dev_dbg(%struct.TYPE_7__* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %65, %57
  %73 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %11, align 8
  %74 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %73, i32 0, i32 0
  %75 = call i32 @put_device(%struct.TYPE_7__* %74)
  %76 = load i32, i32* %10, align 4
  %77 = call %struct.sunxi_rsb_device* @ERR_PTR(i32 %76)
  store %struct.sunxi_rsb_device* %77, %struct.sunxi_rsb_device** %5, align 8
  br label %78

78:                                               ; preds = %72, %16
  %79 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %5, align 8
  ret %struct.sunxi_rsb_device* %79
}

declare dso_local %struct.sunxi_rsb_device* @kzalloc(i32, i32) #1

declare dso_local %struct.sunxi_rsb_device* @ERR_PTR(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
