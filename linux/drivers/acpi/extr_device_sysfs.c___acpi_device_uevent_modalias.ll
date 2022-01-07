; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_device_sysfs.c___acpi_device_uevent_modalias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_device_sysfs.c___acpi_device_uevent_modalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kobj_uevent_env = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__acpi_device_uevent_modalias(%struct.acpi_device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %8 = icmp ne %struct.acpi_device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %98

12:                                               ; preds = %2
  %13 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %98

19:                                               ; preds = %12
  %20 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %21 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %98

26:                                               ; preds = %19
  %27 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %28 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %29 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %32 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %38 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = sub i64 8, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @create_pnp_modalias(%struct.acpi_device* %27, i32* %36, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %26
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %98

48:                                               ; preds = %26
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %51 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %55 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %98

60:                                               ; preds = %48
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %65 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %98

70:                                               ; preds = %63, %60
  %71 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %72 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %73 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %76 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  %81 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %82 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = sub i64 8, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @create_of_modalias(%struct.acpi_device* %71, i32* %80, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %70
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %98

92:                                               ; preds = %70
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %95 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %92, %90, %67, %59, %46, %23, %18, %9
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*) #1

declare dso_local i32 @create_pnp_modalias(%struct.acpi_device*, i32*, i32) #1

declare dso_local i32 @create_of_modalias(%struct.acpi_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
