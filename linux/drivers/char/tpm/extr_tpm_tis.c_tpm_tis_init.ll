; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis.c_tpm_tis_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis.c_tpm_tis_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tpm_info = type { i32, i32 }
%struct.tpm_tis_tcg_phy = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@interrupts = common dso_local global i64 0, align 8
@itpm = common dso_local global i64 0, align 8
@TPM_TIS_ITPM_WORKAROUND = common dso_local global i32 0, align 4
@tpm_tcg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tpm_info*)* @tpm_tis_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_init(%struct.device* %0, %struct.tpm_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tpm_info*, align 8
  %6 = alloca %struct.tpm_tis_tcg_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tpm_info* %1, %struct.tpm_info** %5, align 8
  store i32 -1, i32* %7, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @check_acpi_tpm2(%struct.device* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.tpm_tis_tcg_phy* @devm_kzalloc(%struct.device* %16, i32 8, i32 %17)
  store %struct.tpm_tis_tcg_phy* %18, %struct.tpm_tis_tcg_phy** %6, align 8
  %19 = load %struct.tpm_tis_tcg_phy*, %struct.tpm_tis_tcg_phy** %6, align 8
  %20 = icmp eq %struct.tpm_tis_tcg_phy* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %15
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.tpm_info*, %struct.tpm_info** %5, align 8
  %27 = getelementptr inbounds %struct.tpm_info, %struct.tpm_info* %26, i32 0, i32 1
  %28 = call i32 @devm_ioremap_resource(%struct.device* %25, i32* %27)
  %29 = load %struct.tpm_tis_tcg_phy*, %struct.tpm_tis_tcg_phy** %6, align 8
  %30 = getelementptr inbounds %struct.tpm_tis_tcg_phy, %struct.tpm_tis_tcg_phy* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.tpm_tis_tcg_phy*, %struct.tpm_tis_tcg_phy** %6, align 8
  %32 = getelementptr inbounds %struct.tpm_tis_tcg_phy, %struct.tpm_tis_tcg_phy* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load %struct.tpm_tis_tcg_phy*, %struct.tpm_tis_tcg_phy** %6, align 8
  %38 = getelementptr inbounds %struct.tpm_tis_tcg_phy, %struct.tpm_tis_tcg_phy* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %71

41:                                               ; preds = %24
  %42 = load i64, i64* @interrupts, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.tpm_info*, %struct.tpm_info** %5, align 8
  %46 = getelementptr inbounds %struct.tpm_info, %struct.tpm_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i64, i64* @itpm, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 @ACPI_COMPANION(%struct.device* %52)
  %54 = call i64 @is_itpm(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51, %48
  %57 = load i32, i32* @TPM_TIS_ITPM_WORKAROUND, align 4
  %58 = load %struct.tpm_tis_tcg_phy*, %struct.tpm_tis_tcg_phy** %6, align 8
  %59 = getelementptr inbounds %struct.tpm_tis_tcg_phy, %struct.tpm_tis_tcg_phy* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %56, %51
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load %struct.tpm_tis_tcg_phy*, %struct.tpm_tis_tcg_phy** %6, align 8
  %66 = getelementptr inbounds %struct.tpm_tis_tcg_phy, %struct.tpm_tis_tcg_phy* %65, i32 0, i32 0
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @ACPI_HANDLE(%struct.device* %68)
  %70 = call i32 @tpm_tis_core_init(%struct.device* %64, %struct.TYPE_2__* %66, i32 %67, i32* @tpm_tcg, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %63, %36, %21, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @check_acpi_tpm2(%struct.device*) #1

declare dso_local %struct.tpm_tis_tcg_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @is_itpm(i32) #1

declare dso_local i32 @ACPI_COMPANION(%struct.device*) #1

declare dso_local i32 @tpm_tis_core_init(%struct.device*, %struct.TYPE_2__*, i32, i32*, i32) #1

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
