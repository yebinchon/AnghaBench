; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_scrub_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_scrub_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nvdimm_bus_descriptor = type { i32 }
%struct.acpi_nfit_desc = type { i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ARS_BUSY = common dso_local global i32 0, align 4
@ARS_CANCEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"+\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@ARS_POLL = common dso_local global i32 0, align 4
@nfit_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @scrub_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrub_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nvdimm_bus_descriptor*, align 8
  %9 = alloca %struct.acpi_nfit_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @nfit_device_lock(%struct.device* %14)
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.nvdimm_bus_descriptor* @dev_get_drvdata(%struct.device* %16)
  store %struct.nvdimm_bus_descriptor* %17, %struct.nvdimm_bus_descriptor** %8, align 8
  %18 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %8, align 8
  %19 = icmp ne %struct.nvdimm_bus_descriptor* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 @nfit_device_unlock(%struct.device* %21)
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %8, align 8
  %26 = call %struct.acpi_nfit_desc* @to_acpi_desc(%struct.nvdimm_bus_descriptor* %25)
  store %struct.acpi_nfit_desc* %26, %struct.acpi_nfit_desc** %9, align 8
  %27 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %9, align 8
  %28 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* @ARS_BUSY, align 4
  %31 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %9, align 8
  %32 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %31, i32 0, i32 4
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load i32, i32* @ARS_CANCEL, align 4
  %37 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %9, align 8
  %38 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %37, i32 0, i32 4
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %35, %24
  %43 = phi i1 [ false, %24 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %9, align 8
  %47 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %48, i8* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %42
  %57 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %58 = call i64 @capable(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32, i32* @ARS_POLL, align 4
  %62 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %9, align 8
  %63 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %62, i32 0, i32 4
  %64 = call i32 @test_and_set_bit(i32 %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %9, align 8
  %68 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* @nfit_wq, align 4
  %70 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %9, align 8
  %71 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %70, i32 0, i32 3
  %72 = load i32, i32* @HZ, align 4
  %73 = call i32 @mod_delayed_work(i32 %69, i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %60, %56, %42
  %75 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %9, align 8
  %76 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %75, i32 0, i32 2
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = call i32 @nfit_device_unlock(%struct.device* %78)
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %74, %20
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @nfit_device_lock(%struct.device*) #1

declare dso_local %struct.nvdimm_bus_descriptor* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @nfit_device_unlock(%struct.device*) #1

declare dso_local %struct.acpi_nfit_desc* @to_acpi_desc(%struct.nvdimm_bus_descriptor*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
