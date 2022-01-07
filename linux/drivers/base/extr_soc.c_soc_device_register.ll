; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_soc.c_soc_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_soc.c_soc_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.soc_device_attribute = type { i32 }
%struct.soc_device = type { i32, %struct.TYPE_6__, %struct.soc_device_attribute* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }

@soc_bus_type = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@early_soc_dev_attr = common dso_local global %struct.soc_device_attribute* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@soc_ida = common dso_local global i32 0, align 4
@soc_attr_groups = common dso_local global i32 0, align 4
@soc_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"soc%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.soc_device* @soc_device_register(%struct.soc_device_attribute* %0) #0 {
  %2 = alloca %struct.soc_device*, align 8
  %3 = alloca %struct.soc_device_attribute*, align 8
  %4 = alloca %struct.soc_device*, align 8
  %5 = alloca i32, align 4
  store %struct.soc_device_attribute* %0, %struct.soc_device_attribute** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_bus_type, i32 0, i32 0), align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** @early_soc_dev_attr, align 8
  %10 = icmp ne %struct.soc_device_attribute* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.soc_device* @ERR_PTR(i32 %13)
  store %struct.soc_device* %14, %struct.soc_device** %2, align 8
  br label %77

15:                                               ; preds = %8
  %16 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %3, align 8
  store %struct.soc_device_attribute* %16, %struct.soc_device_attribute** @early_soc_dev_attr, align 8
  store %struct.soc_device* null, %struct.soc_device** %2, align 8
  br label %77

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.soc_device* @kzalloc(i32 32, i32 %18)
  store %struct.soc_device* %19, %struct.soc_device** %4, align 8
  %20 = load %struct.soc_device*, %struct.soc_device** %4, align 8
  %21 = icmp ne %struct.soc_device* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %74

25:                                               ; preds = %17
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @ida_simple_get(i32* @soc_ida, i32 0, i32 0, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %71

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.soc_device*, %struct.soc_device** %4, align 8
  %34 = getelementptr inbounds %struct.soc_device, %struct.soc_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %3, align 8
  %36 = load %struct.soc_device*, %struct.soc_device** %4, align 8
  %37 = getelementptr inbounds %struct.soc_device, %struct.soc_device* %36, i32 0, i32 2
  store %struct.soc_device_attribute* %35, %struct.soc_device_attribute** %37, align 8
  %38 = load %struct.soc_device*, %struct.soc_device** %4, align 8
  %39 = getelementptr inbounds %struct.soc_device, %struct.soc_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store %struct.TYPE_5__* @soc_bus_type, %struct.TYPE_5__** %40, align 8
  %41 = load i32, i32* @soc_attr_groups, align 4
  %42 = load %struct.soc_device*, %struct.soc_device** %4, align 8
  %43 = getelementptr inbounds %struct.soc_device, %struct.soc_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @soc_release, align 4
  %46 = load %struct.soc_device*, %struct.soc_device** %4, align 8
  %47 = getelementptr inbounds %struct.soc_device, %struct.soc_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.soc_device*, %struct.soc_device** %4, align 8
  %50 = getelementptr inbounds %struct.soc_device, %struct.soc_device* %49, i32 0, i32 1
  %51 = load %struct.soc_device*, %struct.soc_device** %4, align 8
  %52 = getelementptr inbounds %struct.soc_device, %struct.soc_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_set_name(%struct.TYPE_6__* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.soc_device*, %struct.soc_device** %4, align 8
  %56 = getelementptr inbounds %struct.soc_device, %struct.soc_device* %55, i32 0, i32 1
  %57 = call i32 @device_register(%struct.TYPE_6__* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %31
  br label %63

61:                                               ; preds = %31
  %62 = load %struct.soc_device*, %struct.soc_device** %4, align 8
  store %struct.soc_device* %62, %struct.soc_device** %2, align 8
  br label %77

63:                                               ; preds = %60
  %64 = load %struct.soc_device*, %struct.soc_device** %4, align 8
  %65 = getelementptr inbounds %struct.soc_device, %struct.soc_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ida_simple_remove(i32* @soc_ida, i32 %66)
  %68 = load %struct.soc_device*, %struct.soc_device** %4, align 8
  %69 = getelementptr inbounds %struct.soc_device, %struct.soc_device* %68, i32 0, i32 1
  %70 = call i32 @put_device(%struct.TYPE_6__* %69)
  store %struct.soc_device* null, %struct.soc_device** %4, align 8
  br label %71

71:                                               ; preds = %63, %30
  %72 = load %struct.soc_device*, %struct.soc_device** %4, align 8
  %73 = call i32 @kfree(%struct.soc_device* %72)
  br label %74

74:                                               ; preds = %71, %22
  %75 = load i32, i32* %5, align 4
  %76 = call %struct.soc_device* @ERR_PTR(i32 %75)
  store %struct.soc_device* %76, %struct.soc_device** %2, align 8
  br label %77

77:                                               ; preds = %74, %61, %15, %11
  %78 = load %struct.soc_device*, %struct.soc_device** %2, align 8
  ret %struct.soc_device* %78
}

declare dso_local %struct.soc_device* @ERR_PTR(i32) #1

declare dso_local %struct.soc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_6__*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.soc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
