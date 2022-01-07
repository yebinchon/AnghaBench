; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, i32 }
%struct.acpi_device = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@boot_ec = common dso_local global %struct.acpi_ec* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_ec_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ec_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_ec*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = icmp ne %struct.acpi_device* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %12 = call %struct.acpi_ec* @acpi_driver_data(%struct.acpi_device* %11)
  store %struct.acpi_ec* %12, %struct.acpi_ec** %4, align 8
  %13 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @release_region(i32 %15, i32 1)
  %17 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @release_region(i32 %19, i32 1)
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %24 = load %struct.acpi_ec*, %struct.acpi_ec** @boot_ec, align 8
  %25 = icmp ne %struct.acpi_ec* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %10
  %27 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %28 = call i32 @ec_remove_handlers(%struct.acpi_ec* %27)
  %29 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %30 = call i32 @acpi_ec_free(%struct.acpi_ec* %29)
  br label %31

31:                                               ; preds = %26, %10
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.acpi_ec* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @ec_remove_handlers(%struct.acpi_ec*) #1

declare dso_local i32 @acpi_ec_free(%struct.acpi_ec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
