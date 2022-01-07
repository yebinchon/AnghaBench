; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_subsys_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_subsys_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.device*, i32 }
%struct.device = type { i32, %struct.attribute_group**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kobject* }
%struct.attribute_group = type { i32 }
%struct.kobject = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@system_root_device_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bus_type*, %struct.attribute_group**, %struct.kobject*)* @subsys_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subsys_register(%struct.bus_type* %0, %struct.attribute_group** %1, %struct.kobject* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bus_type*, align 8
  %6 = alloca %struct.attribute_group**, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.bus_type* %0, %struct.bus_type** %5, align 8
  store %struct.attribute_group** %1, %struct.attribute_group*** %6, align 8
  store %struct.kobject* %2, %struct.kobject** %7, align 8
  %10 = load %struct.bus_type*, %struct.bus_type** %5, align 8
  %11 = call i32 @bus_register(%struct.bus_type* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %63

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.device* @kzalloc(i32 24, i32 %17)
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %59

24:                                               ; preds = %16
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = load %struct.bus_type*, %struct.bus_type** %5, align 8
  %27 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_set_name(%struct.device* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %56

33:                                               ; preds = %24
  %34 = load %struct.kobject*, %struct.kobject** %7, align 8
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.kobject* %34, %struct.kobject** %37, align 8
  %38 = load %struct.attribute_group**, %struct.attribute_group*** %6, align 8
  %39 = load %struct.device*, %struct.device** %8, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 1
  store %struct.attribute_group** %38, %struct.attribute_group*** %40, align 8
  %41 = load i32, i32* @system_root_device_release, align 4
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.device*, %struct.device** %8, align 8
  %45 = call i32 @device_register(%struct.device* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %53

49:                                               ; preds = %33
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = load %struct.bus_type*, %struct.bus_type** %5, align 8
  %52 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %51, i32 0, i32 0
  store %struct.device* %50, %struct.device** %52, align 8
  store i32 0, i32* %4, align 4
  br label %63

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %8, align 8
  %55 = call i32 @put_device(%struct.device* %54)
  store %struct.device* null, %struct.device** %8, align 8
  br label %56

56:                                               ; preds = %53, %32
  %57 = load %struct.device*, %struct.device** %8, align 8
  %58 = call i32 @kfree(%struct.device* %57)
  br label %59

59:                                               ; preds = %56, %21
  %60 = load %struct.bus_type*, %struct.bus_type** %5, align 8
  %61 = call i32 @bus_unregister(%struct.bus_type* %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %49, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @bus_register(%struct.bus_type*) #1

declare dso_local %struct.device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @kfree(%struct.device*) #1

declare dso_local i32 @bus_unregister(%struct.bus_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
