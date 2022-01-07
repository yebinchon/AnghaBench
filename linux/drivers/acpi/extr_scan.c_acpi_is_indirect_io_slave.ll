; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_is_indirect_io_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_is_indirect_io_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_id = type { i8*, i32 }
%struct.acpi_device = type { %struct.acpi_device* }

@acpi_is_indirect_io_slave.indirect_io_hosts = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0 }, %struct.acpi_device_id zeroinitializer], align 16
@.str = private unnamed_addr constant [9 x i8] c"HISI0191\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_is_indirect_io_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_is_indirect_io_slave(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %4 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %5 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 0
  %6 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  store %struct.acpi_device* %6, %struct.acpi_device** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = icmp ne %struct.acpi_device* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %11 = call i32 @acpi_match_device_ids(%struct.acpi_device* %10, %struct.acpi_device_id* getelementptr inbounds ([2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* @acpi_is_indirect_io_slave.indirect_io_hosts, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ false, %1 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i32 @acpi_match_device_ids(%struct.acpi_device*, %struct.acpi_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
