; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_devm_device_add_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_devm_device_add_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.attribute_group = type { i32 }
%union.device_attr_group_devres = type { %struct.attribute_group** }

@devm_attr_groups_remove = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_device_add_groups(%struct.device* %0, %struct.attribute_group** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.attribute_group**, align 8
  %6 = alloca %union.device_attr_group_devres*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.attribute_group** %1, %struct.attribute_group*** %5, align 8
  %8 = load i32, i32* @devm_attr_groups_remove, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %union.device_attr_group_devres* @devres_alloc(i32 %8, i32 8, i32 %9)
  store %union.device_attr_group_devres* %10, %union.device_attr_group_devres** %6, align 8
  %11 = load %union.device_attr_group_devres*, %union.device_attr_group_devres** %6, align 8
  %12 = icmp ne %union.device_attr_group_devres* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %20 = call i32 @sysfs_create_groups(i32* %18, %struct.attribute_group** %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %union.device_attr_group_devres*, %union.device_attr_group_devres** %6, align 8
  %25 = call i32 @devres_free(%union.device_attr_group_devres* %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %16
  %28 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %29 = load %union.device_attr_group_devres*, %union.device_attr_group_devres** %6, align 8
  %30 = bitcast %union.device_attr_group_devres* %29 to %struct.attribute_group***
  store %struct.attribute_group** %28, %struct.attribute_group*** %30, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %union.device_attr_group_devres*, %union.device_attr_group_devres** %6, align 8
  %33 = call i32 @devres_add(%struct.device* %31, %union.device_attr_group_devres* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %23, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %union.device_attr_group_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @sysfs_create_groups(i32*, %struct.attribute_group**) #1

declare dso_local i32 @devres_free(%union.device_attr_group_devres*) #1

declare dso_local i32 @devres_add(%struct.device*, %union.device_attr_group_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
