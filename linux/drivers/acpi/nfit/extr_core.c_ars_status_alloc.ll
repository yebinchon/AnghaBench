; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_ars_status_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_ars_status_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { %struct.nd_cmd_ars_status*, i32, %struct.device* }
%struct.nd_cmd_ars_status = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_nfit_desc*)* @ars_status_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ars_status_alloc(%struct.acpi_nfit_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_nfit_desc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nd_cmd_ars_status*, align 8
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %3, align 8
  %6 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %9, i32 0, i32 0
  %11 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %10, align 8
  %12 = icmp ne %struct.nd_cmd_ars_status* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %14, i32 0, i32 0
  %16 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %15, align 8
  %17 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @memset(%struct.nd_cmd_ars_status* %16, i32 0, i32 %19)
  store i32 0, i32* %2, align 4
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.nd_cmd_ars_status* @devm_kzalloc(%struct.device* %22, i32 %25, i32 %26)
  store %struct.nd_cmd_ars_status* %27, %struct.nd_cmd_ars_status** %5, align 8
  %28 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %29 = icmp ne %struct.nd_cmd_ars_status* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %21
  %34 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %35 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %36 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %35, i32 0, i32 0
  store %struct.nd_cmd_ars_status* %34, %struct.nd_cmd_ars_status** %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %30, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%struct.nd_cmd_ars_status*, i32, i32) #1

declare dso_local %struct.nd_cmd_ars_status* @devm_kzalloc(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
