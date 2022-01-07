; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_match_device_ids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_match_device_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_device_id = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_match_device_ids(%struct.acpi_device* %0, %struct.acpi_device_id* %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_device_id*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store %struct.acpi_device_id* %1, %struct.acpi_device_id** %4, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %7 = call i64 @__acpi_match_device(%struct.acpi_device* %5, %struct.acpi_device_id* %6, i32* null, i32* null, i32* null)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  br label %13

13:                                               ; preds = %10, %9
  %14 = phi i32 [ 0, %9 ], [ %12, %10 ]
  ret i32 %14
}

declare dso_local i64 @__acpi_match_device(%struct.acpi_device*, %struct.acpi_device_id*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
