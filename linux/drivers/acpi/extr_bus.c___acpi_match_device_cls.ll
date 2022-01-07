; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c___acpi_match_device_cls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c___acpi_match_device_cls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_id = type { i32, i32 }
%struct.acpi_hardware_id = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device_id*, %struct.acpi_hardware_id*)* @__acpi_match_device_cls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__acpi_match_device_cls(%struct.acpi_device_id* %0, %struct.acpi_hardware_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device_id*, align 8
  %5 = alloca %struct.acpi_hardware_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i8], align 1
  store %struct.acpi_device_id* %0, %struct.acpi_device_id** %4, align 8
  store %struct.acpi_hardware_id* %1, %struct.acpi_hardware_id** %5, align 8
  %10 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %55, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 3
  br i1 %18, label %19, label %58

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 3, %20
  %22 = mul nsw i32 8, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %24 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %25, %26
  %28 = and i32 %27, 255
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %55

32:                                               ; preds = %19
  %33 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %34 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %35 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %43 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 1
  %48 = mul nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = call i64 @strncmp(i8* %42, i32* %50, i32 2)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %59

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54, %31
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %16

58:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %53, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
