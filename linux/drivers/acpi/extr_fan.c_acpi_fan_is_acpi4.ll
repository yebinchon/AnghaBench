; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_acpi_fan_is_acpi4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_acpi_fan_is_acpi4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_FIF\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_FPS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_FSL\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_FST\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_fan_is_acpi4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fan_is_acpi4(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %3 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @acpi_has_method(i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @acpi_has_method(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @acpi_has_method(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @acpi_has_method(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %20, %14, %8, %1
  %27 = phi i1 [ false, %14 ], [ false, %8 ], [ false, %1 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i64 @acpi_has_method(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
