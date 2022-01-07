; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_bmc_dev_attr_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_bmc_dev_attr_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.TYPE_3__ = type { %struct.attribute }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.bmc_device = type { i32 }
%struct.ipmi_device_id = type { i64 }

@dev_attr_aux_firmware_revision = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@dev_attr_guid = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @bmc_dev_attr_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc_dev_attr_is_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.bmc_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipmi_device_id, align 8
  %13 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.kobject*, %struct.kobject** %5, align 8
  %15 = call %struct.device* @kobj_to_dev(%struct.kobject* %14)
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = call %struct.bmc_device* @to_bmc_device(%struct.device* %16)
  store %struct.bmc_device* %17, %struct.bmc_device** %9, align 8
  %18 = load %struct.attribute*, %struct.attribute** %6, align 8
  %19 = getelementptr inbounds %struct.attribute, %struct.attribute* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.attribute*, %struct.attribute** %6, align 8
  %22 = icmp eq %struct.attribute* %21, getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev_attr_aux_firmware_revision, i32 0, i32 0)
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = load %struct.bmc_device*, %struct.bmc_device** %9, align 8
  %25 = call i32 @bmc_get_device_id(i32* null, %struct.bmc_device* %24, %struct.ipmi_device_id* %12, i32* null, i32* null)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ipmi_device_id, %struct.ipmi_device_id* %12, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  br label %35

34:                                               ; preds = %28, %23
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  store i32 %36, i32* %4, align 4
  br label %55

37:                                               ; preds = %3
  %38 = load %struct.attribute*, %struct.attribute** %6, align 8
  %39 = icmp eq %struct.attribute* %38, getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dev_attr_guid, i32 0, i32 0)
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.bmc_device*, %struct.bmc_device** %9, align 8
  %42 = call i32 @bmc_get_device_id(i32* null, %struct.bmc_device* %41, %struct.ipmi_device_id* null, i32* %13, i32* null)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  br label %51

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %37
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %51, %35
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.bmc_device* @to_bmc_device(%struct.device*) #1

declare dso_local i32 @bmc_get_device_id(i32*, %struct.bmc_device*, %struct.ipmi_device_id*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
