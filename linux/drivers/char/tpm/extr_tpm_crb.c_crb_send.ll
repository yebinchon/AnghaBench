; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c_crb_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c_crb_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.crb_priv = type { i64, i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"invalid command count value %zd %d\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@ACPI_TPM2_COMMAND_BUFFER = common dso_local global i64 0, align 8
@ACPI_TPM2_MEMORY_MAPPED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"MSFT0101\00", align 1
@CRB_START_INVOKE = common dso_local global i32 0, align 4
@ACPI_TPM2_START_METHOD = common dso_local global i64 0, align 8
@ACPI_TPM2_COMMAND_BUFFER_WITH_START_METHOD = common dso_local global i64 0, align 8
@ACPI_TPM2_COMMAND_BUFFER_WITH_ARM_SMC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @crb_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crb_send(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.crb_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %11 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %10, i32 0, i32 0
  %12 = call %struct.crb_priv* @dev_get_drvdata(i32* %11)
  store %struct.crb_priv* %12, %struct.crb_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %14 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @iowrite32(i32 0, i32* %16)
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %20 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ugt i64 %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %25 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %28 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %29)
  %31 = load i32, i32* @E2BIG, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %101

33:                                               ; preds = %3
  %34 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %35 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @memcpy_toio(i32 %36, i32* %37, i64 %38)
  %40 = call i32 (...) @wmb()
  %41 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %42 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ACPI_TPM2_COMMAND_BUFFER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %33
  %47 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %48 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ACPI_TPM2_MEMORY_MAPPED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %54 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @strcmp(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52, %46, %33
  %59 = load i32, i32* @CRB_START_INVOKE, align 4
  %60 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %61 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @iowrite32(i32 %59, i32* %63)
  br label %65

65:                                               ; preds = %58, %52
  %66 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %67 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ACPI_TPM2_START_METHOD, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %73 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ACPI_TPM2_COMMAND_BUFFER_WITH_START_METHOD, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71, %65
  %78 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %79 = call i32 @crb_do_acpi_start(%struct.tpm_chip* %78)
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %77, %71
  %81 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %82 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ACPI_TPM2_COMMAND_BUFFER_WITH_ARM_SMC, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load i32, i32* @CRB_START_INVOKE, align 4
  %88 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %89 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 @iowrite32(i32 %87, i32* %91)
  %93 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %94 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %93, i32 0, i32 0
  %95 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %96 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @tpm_crb_smc_start(i32* %94, i32 %97)
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %86, %80
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %23
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.crb_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @memcpy_toio(i32, i32*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @crb_do_acpi_start(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_crb_smc_start(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
