; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_add_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_add_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_pnp = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_hardware_id = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device_pnp*, i8*)* @acpi_add_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_add_id(%struct.acpi_device_pnp* %0, i8* %1) #0 {
  %3 = alloca %struct.acpi_device_pnp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_hardware_id*, align 8
  store %struct.acpi_device_pnp* %0, %struct.acpi_device_pnp** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.acpi_hardware_id* @kmalloc(i32 8, i32 %6)
  store %struct.acpi_hardware_id* %7, %struct.acpi_hardware_id** %5, align 8
  %8 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %5, align 8
  %9 = icmp ne %struct.acpi_hardware_id* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %33

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @kstrdup_const(i8* %12, i32 %13)
  %15 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %5, align 8
  %16 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %11
  %22 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %5, align 8
  %23 = call i32 @kfree(%struct.acpi_hardware_id* %22)
  br label %33

24:                                               ; preds = %11
  %25 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %5, align 8
  %26 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %25, i32 0, i32 0
  %27 = load %struct.acpi_device_pnp*, %struct.acpi_device_pnp** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %27, i32 0, i32 1
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  %30 = load %struct.acpi_device_pnp*, %struct.acpi_device_pnp** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %24, %21, %10
  ret void
}

declare dso_local %struct.acpi_hardware_id* @kmalloc(i32, i32) #1

declare dso_local i32 @kstrdup_const(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acpi_hardware_id*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
