; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_create_groups_vargs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_create_groups_vargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class = type { i32 }
%struct.device = type { i32, i32, %struct.attribute_group**, %struct.device*, %struct.class*, i32 }
%struct.attribute_group = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@device_create_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @device_create_groups_vargs(%struct.class* %0, %struct.device* %1, i32 %2, i8* %3, %struct.attribute_group** %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.class*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.attribute_group**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.device*, align 8
  %17 = alloca i32, align 4
  store %struct.class* %0, %struct.class** %9, align 8
  store %struct.device* %1, %struct.device** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store %struct.attribute_group** %4, %struct.attribute_group*** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.device* null, %struct.device** %16, align 8
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %17, align 4
  %20 = load %struct.class*, %struct.class** %9, align 8
  %21 = icmp eq %struct.class* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %7
  %23 = load %struct.class*, %struct.class** %9, align 8
  %24 = call i64 @IS_ERR(%struct.class* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %7
  br label %72

27:                                               ; preds = %22
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.device* @kzalloc(i32 40, i32 %28)
  store %struct.device* %29, %struct.device** %16, align 8
  %30 = load %struct.device*, %struct.device** %16, align 8
  %31 = icmp ne %struct.device* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %17, align 4
  br label %72

35:                                               ; preds = %27
  %36 = load %struct.device*, %struct.device** %16, align 8
  %37 = call i32 @device_initialize(%struct.device* %36)
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.device*, %struct.device** %16, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.class*, %struct.class** %9, align 8
  %42 = load %struct.device*, %struct.device** %16, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 4
  store %struct.class* %41, %struct.class** %43, align 8
  %44 = load %struct.device*, %struct.device** %10, align 8
  %45 = load %struct.device*, %struct.device** %16, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 3
  store %struct.device* %44, %struct.device** %46, align 8
  %47 = load %struct.attribute_group**, %struct.attribute_group*** %13, align 8
  %48 = load %struct.device*, %struct.device** %16, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 2
  store %struct.attribute_group** %47, %struct.attribute_group*** %49, align 8
  %50 = load i32, i32* @device_create_release, align 4
  %51 = load %struct.device*, %struct.device** %16, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.device*, %struct.device** %16, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @dev_set_drvdata(%struct.device* %53, i8* %54)
  %56 = load %struct.device*, %struct.device** %16, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 0
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @kobject_set_name_vargs(i32* %57, i8* %58, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %35
  br label %72

64:                                               ; preds = %35
  %65 = load %struct.device*, %struct.device** %16, align 8
  %66 = call i32 @device_add(%struct.device* %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %72

70:                                               ; preds = %64
  %71 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %71, %struct.device** %8, align 8
  br label %77

72:                                               ; preds = %69, %63, %32, %26
  %73 = load %struct.device*, %struct.device** %16, align 8
  %74 = call i32 @put_device(%struct.device* %73)
  %75 = load i32, i32* %17, align 4
  %76 = call %struct.device* @ERR_PTR(i32 %75)
  store %struct.device* %76, %struct.device** %8, align 8
  br label %77

77:                                               ; preds = %72, %70
  %78 = load %struct.device*, %struct.device** %8, align 8
  ret %struct.device* %78
}

declare dso_local i64 @IS_ERR(%struct.class*) #1

declare dso_local %struct.device* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

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
