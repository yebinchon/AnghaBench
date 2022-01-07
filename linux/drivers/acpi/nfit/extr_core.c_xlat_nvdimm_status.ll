; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_xlat_nvdimm_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_xlat_nvdimm_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { i32 }
%struct.nfit_mem = type { i32 }

@NFIT_MEM_LSR = common dso_local global i32 0, align 4
@ND_CONFIG_LOCKED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ACPI_LABELS_LOCKED = common dso_local global i32 0, align 4
@NFIT_MEM_LSW = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm*, i8*, i32, i32)* @xlat_nvdimm_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlat_nvdimm_status(%struct.nvdimm* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvdimm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfit_mem*, align 8
  store %struct.nvdimm* %0, %struct.nvdimm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %12 = call %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm* %11)
  store %struct.nfit_mem* %12, %struct.nfit_mem** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %59 [
    i32 129, label %14
    i32 130, label %31
    i32 128, label %45
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @NFIT_MEM_LSR, align 4
  %16 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %17 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %16, i32 0, i32 0
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %60

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  %23 = ashr i32 %22, 16
  %24 = load i32, i32* @ND_CONFIG_LOCKED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EACCES, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %67

30:                                               ; preds = %21
  br label %60

31:                                               ; preds = %4
  %32 = load i32, i32* @NFIT_MEM_LSR, align 4
  %33 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %34 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %33, i32 0, i32 0
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ACPI_LABELS_LOCKED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EACCES, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %67

44:                                               ; preds = %37, %31
  br label %60

45:                                               ; preds = %4
  %46 = load i32, i32* @NFIT_MEM_LSW, align 4
  %47 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %48 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %47, i32 0, i32 0
  %49 = call i32 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @ACPI_LABELS_LOCKED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EACCES, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %67

58:                                               ; preds = %51, %45
  br label %60

59:                                               ; preds = %4
  br label %60

60:                                               ; preds = %59, %58, %44, %30, %20
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %67

66:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %63, %55, %41, %27
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
