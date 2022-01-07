; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_desc_init_scrub_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_desc_init_scrub_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { i8*, i32, %struct.device* }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"nfit\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"sysfs_get_dirent 'nfit' failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"scrub\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"sysfs_get_dirent 'scrub' failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_nfit_desc*)* @acpi_nfit_desc_init_scrub_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_nfit_desc_init_scrub_attr(%struct.acpi_nfit_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_nfit_desc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kernfs_node*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %3, align 8
  %7 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %7, i32 0, i32 2
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ars_supported(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.device* @to_nvdimm_bus_dev(i32 %19)
  store %struct.device* %20, %struct.device** %6, align 8
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.kernfs_node*, %struct.kernfs_node** %23, align 8
  %25 = call i8* @sysfs_get_dirent(%struct.kernfs_node* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = bitcast i8* %25 to %struct.kernfs_node*
  store %struct.kernfs_node* %26, %struct.kernfs_node** %5, align 8
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %28 = icmp ne %struct.kernfs_node* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %16
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %51

34:                                               ; preds = %16
  %35 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %36 = call i8* @sysfs_get_dirent(%struct.kernfs_node* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %40 = call i32 @sysfs_put(%struct.kernfs_node* %39)
  %41 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %42 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %34
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %45, %29, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @ars_supported(i32) #1

declare dso_local %struct.device* @to_nvdimm_bus_dev(i32) #1

declare dso_local i8* @sysfs_get_dirent(%struct.kernfs_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sysfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
