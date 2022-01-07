; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_attribute_container.c_attribute_container_add_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_attribute_container.c_attribute_container_add_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.attribute_container = type { i64, %struct.device_attribute** }
%struct.device_attribute = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attribute_container_add_attrs(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.attribute_container*, align 8
  %5 = alloca %struct.device_attribute**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.attribute_container* @attribute_container_classdev_to_container(%struct.device* %8)
  store %struct.attribute_container* %9, %struct.attribute_container** %4, align 8
  %10 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %11 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %10, i32 0, i32 1
  %12 = load %struct.device_attribute**, %struct.device_attribute*** %11, align 8
  store %struct.device_attribute** %12, %struct.device_attribute*** %5, align 8
  %13 = load %struct.device_attribute**, %struct.device_attribute*** %5, align 8
  %14 = icmp ne %struct.device_attribute** %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %17 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i1 [ false, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.device_attribute**, %struct.device_attribute*** %5, align 8
  %25 = icmp ne %struct.device_attribute** %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %28 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %76

32:                                               ; preds = %26, %20
  %33 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %34 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %41 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @sysfs_create_group(i32* %39, i64 %42)
  store i32 %43, i32* %2, align 4
  br label %76

44:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %72, %44
  %46 = load %struct.device_attribute**, %struct.device_attribute*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.device_attribute*, %struct.device_attribute** %46, i64 %48
  %50 = load %struct.device_attribute*, %struct.device_attribute** %49, align 8
  %51 = icmp ne %struct.device_attribute* %50, null
  br i1 %51, label %52, label %75

52:                                               ; preds = %45
  %53 = load %struct.device_attribute**, %struct.device_attribute*** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.device_attribute*, %struct.device_attribute** %53, i64 %55
  %57 = load %struct.device_attribute*, %struct.device_attribute** %56, align 8
  %58 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %57, i32 0, i32 0
  %59 = call i32 @sysfs_attr_init(i32* %58)
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = load %struct.device_attribute**, %struct.device_attribute*** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.device_attribute*, %struct.device_attribute** %61, i64 %63
  %65 = load %struct.device_attribute*, %struct.device_attribute** %64, align 8
  %66 = call i32 @device_create_file(%struct.device* %60, %struct.device_attribute* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %52
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %76

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %45

75:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %69, %37, %31
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.attribute_container* @attribute_container_classdev_to_container(%struct.device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i64) #1

declare dso_local i32 @sysfs_attr_init(i32*) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
