; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_ars_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_ars_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { %struct.device*, %struct.nfit_spa*, i32, %struct.nd_cmd_ars_status* }
%struct.device = type { i32 }
%struct.nd_cmd_ars_status = type { i64, i64 }
%struct.nfit_spa = type { %struct.nd_region*, %struct.acpi_nfit_system_address* }
%struct.nd_region = type { i32 }
%struct.acpi_nfit_system_address = type { i64, i64, i32 }

@NVDIMM_REVALIDATE_POISON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ARS: range %d complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_nfit_desc*, %struct.nfit_spa*)* @ars_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ars_complete(%struct.acpi_nfit_desc* %0, %struct.nfit_spa* %1) #0 {
  %3 = alloca %struct.acpi_nfit_desc*, align 8
  %4 = alloca %struct.nfit_spa*, align 8
  %5 = alloca %struct.nd_cmd_ars_status*, align 8
  %6 = alloca %struct.acpi_nfit_system_address*, align 8
  %7 = alloca %struct.nd_region*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %3, align 8
  store %struct.nfit_spa* %1, %struct.nfit_spa** %4, align 8
  %9 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %9, i32 0, i32 3
  %11 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %10, align 8
  store %struct.nd_cmd_ars_status* %11, %struct.nd_cmd_ars_status** %5, align 8
  %12 = load %struct.nfit_spa*, %struct.nfit_spa** %4, align 8
  %13 = getelementptr inbounds %struct.nfit_spa, %struct.nfit_spa* %12, i32 0, i32 1
  %14 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %13, align 8
  store %struct.acpi_nfit_system_address* %14, %struct.acpi_nfit_system_address** %6, align 8
  %15 = load %struct.nfit_spa*, %struct.nfit_spa** %4, align 8
  %16 = getelementptr inbounds %struct.nfit_spa, %struct.nfit_spa* %15, i32 0, i32 0
  %17 = load %struct.nd_region*, %struct.nd_region** %16, align 8
  store %struct.nd_region* %17, %struct.nd_region** %7, align 8
  %18 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %18, i32 0, i32 2
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %21, i32 0, i32 1
  %23 = load %struct.nfit_spa*, %struct.nfit_spa** %22, align 8
  %24 = load %struct.nfit_spa*, %struct.nfit_spa** %4, align 8
  %25 = icmp ne %struct.nfit_spa* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %96

27:                                               ; preds = %2
  %28 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %29 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %6, align 8
  %32 = getelementptr inbounds %struct.acpi_nfit_system_address, %struct.acpi_nfit_system_address* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %37 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %6, align 8
  %40 = getelementptr inbounds %struct.acpi_nfit_system_address, %struct.acpi_nfit_system_address* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %6, align 8
  %43 = getelementptr inbounds %struct.acpi_nfit_system_address, %struct.acpi_nfit_system_address* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = icmp slt i64 %38, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %35, %27
  %48 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %49 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %6, align 8
  %52 = getelementptr inbounds %struct.acpi_nfit_system_address, %struct.acpi_nfit_system_address* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %47, %35
  %56 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %57 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %60 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %6, align 8
  %64 = getelementptr inbounds %struct.acpi_nfit_system_address, %struct.acpi_nfit_system_address* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %6, align 8
  %67 = getelementptr inbounds %struct.acpi_nfit_system_address, %struct.acpi_nfit_system_address* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = icmp sge i64 %62, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  br label %73

72:                                               ; preds = %55
  br label %96

73:                                               ; preds = %71
  br label %75

74:                                               ; preds = %47
  br label %96

75:                                               ; preds = %73
  %76 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %77 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %76, i32 0, i32 1
  store %struct.nfit_spa* null, %struct.nfit_spa** %77, align 8
  %78 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %79 = icmp ne %struct.nd_region* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %82 = call %struct.device* @nd_region_dev(%struct.nd_region* %81)
  store %struct.device* %82, %struct.device** %8, align 8
  %83 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %84 = load i32, i32* @NVDIMM_REVALIDATE_POISON, align 4
  %85 = call i32 @nvdimm_region_notify(%struct.nd_region* %83, i32 %84)
  br label %90

86:                                               ; preds = %75
  %87 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %88 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %87, i32 0, i32 0
  %89 = load %struct.device*, %struct.device** %88, align 8
  store %struct.device* %89, %struct.device** %8, align 8
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.device*, %struct.device** %8, align 8
  %92 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %6, align 8
  %93 = getelementptr inbounds %struct.acpi_nfit_system_address, %struct.acpi_nfit_system_address* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_dbg(%struct.device* %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %74, %72, %26
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.device* @nd_region_dev(%struct.nd_region*) #1

declare dso_local i32 @nvdimm_region_notify(%struct.nd_region*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
