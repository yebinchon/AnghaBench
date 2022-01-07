; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_flags_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_flags_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nvdimm = type { i32 }
%struct.nfit_mem = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NFIT_MEM_DIRTY = common dso_local global i32 0, align 4
@ACPI_NFIT_MEM_FLUSH_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s%s%s%s%s%s%s\0A\00", align 1
@ACPI_NFIT_MEM_SAVE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"save_fail \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ACPI_NFIT_MEM_RESTORE_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"restore_fail \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"flush_fail \00", align 1
@ACPI_NFIT_MEM_NOT_ARMED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"not_armed \00", align 1
@ACPI_NFIT_MEM_HEALTH_OBSERVED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"smart_event \00", align 1
@ACPI_NFIT_MEM_MAP_FAILED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"map_fail \00", align 1
@ACPI_NFIT_MEM_HEALTH_ENABLED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"smart_notify \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @flags_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flags_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nvdimm*, align 8
  %8 = alloca %struct.nfit_mem*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.nvdimm* @to_nvdimm(%struct.device* %10)
  store %struct.nvdimm* %11, %struct.nvdimm** %7, align 8
  %12 = load %struct.nvdimm*, %struct.nvdimm** %7, align 8
  %13 = call %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm* %12)
  store %struct.nfit_mem* %13, %struct.nfit_mem** %8, align 8
  %14 = load %struct.nfit_mem*, %struct.nfit_mem** %8, align 8
  %15 = call %struct.TYPE_2__* @__to_nfit_memdev(%struct.nfit_mem* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @NFIT_MEM_DIRTY, align 4
  %19 = load %struct.nfit_mem*, %struct.nfit_mem** %8, align 8
  %20 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @ACPI_NFIT_MEM_FLUSH_FAILED, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23, %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ACPI_NFIT_MEM_SAVE_FAILED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ACPI_NFIT_MEM_RESTORE_FAILED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @ACPI_NFIT_MEM_FLUSH_FAILED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @ACPI_NFIT_MEM_NOT_ARMED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @ACPI_NFIT_MEM_HEALTH_OBSERVED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @ACPI_NFIT_MEM_MAP_FAILED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @ACPI_NFIT_MEM_HEALTH_ENABLED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %71 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %40, i8* %46, i8* %52, i8* %58, i8* %64, i8* %70)
  ret i32 %71
}

declare dso_local %struct.nvdimm* @to_nvdimm(%struct.device*) #1

declare dso_local %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm*) #1

declare dso_local %struct.TYPE_2__* @__to_nfit_memdev(%struct.nfit_mem*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
