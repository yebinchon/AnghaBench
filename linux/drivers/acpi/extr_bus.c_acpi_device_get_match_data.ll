; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_device_get_match_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_device_get_match_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device_id = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_device_get_match_data(%struct.device* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.acpi_device_id*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i8* @acpi_of_device_get_match_data(%struct.device* %12)
  store i8* %13, i8** %2, align 8
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call %struct.acpi_device_id* @acpi_match_device(i32 %19, %struct.device* %20)
  store %struct.acpi_device_id* %21, %struct.acpi_device_id** %4, align 8
  %22 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %23 = icmp ne %struct.acpi_device_id* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %30

25:                                               ; preds = %14
  %26 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %25, %24, %11
  %31 = load i8*, i8** %2, align 8
  ret i8* %31
}

declare dso_local i8* @acpi_of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
