; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_cpu.c___cpu_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_cpu.c___cpu_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32, %struct.attribute_group**, %struct.device* }
%struct.attribute_group = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@device_create_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.device*, i8*, %struct.attribute_group**, i8*, i32)* @__cpu_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @__cpu_device_create(%struct.device* %0, i8* %1, %struct.attribute_group** %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.attribute_group**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.attribute_group** %2, %struct.attribute_group*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.device* null, %struct.device** %12, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.device* @kzalloc(i32 24, i32 %16)
  store %struct.device* %17, %struct.device** %12, align 8
  %18 = load %struct.device*, %struct.device** %12, align 8
  %19 = icmp ne %struct.device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %13, align 4
  br label %56

23:                                               ; preds = %5
  %24 = load %struct.device*, %struct.device** %12, align 8
  %25 = call i32 @device_initialize(%struct.device* %24)
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = load %struct.device*, %struct.device** %12, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 3
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.attribute_group**, %struct.attribute_group*** %9, align 8
  %30 = load %struct.device*, %struct.device** %12, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 2
  store %struct.attribute_group** %29, %struct.attribute_group*** %31, align 8
  %32 = load i32, i32* @device_create_release, align 4
  %33 = load %struct.device*, %struct.device** %12, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.device*, %struct.device** %12, align 8
  %36 = call i32 @device_set_pm_not_required(%struct.device* %35)
  %37 = load %struct.device*, %struct.device** %12, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @dev_set_drvdata(%struct.device* %37, i8* %38)
  %40 = load %struct.device*, %struct.device** %12, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @kobject_set_name_vargs(i32* %41, i8* %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %23
  br label %56

48:                                               ; preds = %23
  %49 = load %struct.device*, %struct.device** %12, align 8
  %50 = call i32 @device_add(%struct.device* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %56

54:                                               ; preds = %48
  %55 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %55, %struct.device** %6, align 8
  br label %61

56:                                               ; preds = %53, %47, %20
  %57 = load %struct.device*, %struct.device** %12, align 8
  %58 = call i32 @put_device(%struct.device* %57)
  %59 = load i32, i32* %13, align 4
  %60 = call %struct.device* @ERR_PTR(i32 %59)
  store %struct.device* %60, %struct.device** %6, align 8
  br label %61

61:                                               ; preds = %56, %54
  %62 = load %struct.device*, %struct.device** %6, align 8
  ret %struct.device* %62
}

declare dso_local %struct.device* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @device_set_pm_not_required(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i8*) #1

declare dso_local i32 @kobject_set_name_vargs(i32*, i8*, i32) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local %struct.device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
