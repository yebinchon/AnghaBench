; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_ars_status_process_records.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_ars_status_process_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { i32, i32, %struct.nd_cmd_ars_status*, %struct.nvdimm_bus* }
%struct.nd_cmd_ars_status = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nvdimm_bus = type { i32 }

@ARS_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"skip %d stale records\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"detected truncated ars results\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_nfit_desc*)* @ars_status_process_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ars_status_process_records(%struct.acpi_nfit_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_nfit_desc*, align 8
  %4 = alloca %struct.nvdimm_bus*, align 8
  %5 = alloca %struct.nd_cmd_ars_status*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %3, align 8
  %8 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %8, i32 0, i32 3
  %10 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %9, align 8
  store %struct.nvdimm_bus* %10, %struct.nvdimm_bus** %4, align 8
  %11 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %11, i32 0, i32 2
  %13 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %12, align 8
  store %struct.nd_cmd_ars_status* %13, %struct.nd_cmd_ars_status** %5, align 8
  %14 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %15 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 44
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

19:                                               ; preds = %1
  %20 = load i32, i32* @ARS_VALID, align 4
  %21 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %21, i32 0, i32 1
  %23 = call i32 @test_and_clear_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %30 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %2, align 4
  br label %91

33:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %76, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %37 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %34
  %41 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %42 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = add i64 44, %48
  %50 = icmp ult i64 %44, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %79

52:                                               ; preds = %40
  %53 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %4, align 8
  %54 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %55 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %63 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @nvdimm_bus_add_badrange(%struct.nvdimm_bus* %53, i32 %61, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %52
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %91

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %34

79:                                               ; preds = %51, %34
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %5, align 8
  %82 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %87 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_warn(i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %79
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %73, %25, %18
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @nvdimm_bus_add_badrange(%struct.nvdimm_bus*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
