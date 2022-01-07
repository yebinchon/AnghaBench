; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i32 }
%struct.tpm_tis_data = type { i32, i32 }

@TPM_CHIP_FLAG_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @tpm_tis_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_send(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tpm_tis_data*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %12 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %11, i32 0, i32 1
  %13 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %12)
  store %struct.tpm_tis_data* %13, %struct.tpm_tis_data** %10, align 8
  %14 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %15 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TPM_CHIP_FLAG_IRQ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %22 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20, %3
  %26 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @tpm_tis_send_main(%struct.tpm_chip* %26, i32* %27, i64 %28)
  store i32 %29, i32* %4, align 4
  br label %72

30:                                               ; preds = %20
  %31 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %32 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %35 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @TPM_CHIP_FLAG_IRQ, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %39 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @tpm_tis_send_main(%struct.tpm_chip* %42, i32* %43, i64 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %48 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @TPM_CHIP_FLAG_IRQ, align 4
  %50 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %51 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %55 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %30
  %59 = call i32 @tpm_msleep(i32 1)
  br label %60

60:                                               ; preds = %58, %30
  %61 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %62 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %67 = call i32 @disable_interrupts(%struct.tpm_chip* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %70 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %25
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_tis_send_main(%struct.tpm_chip*, i32*, i64) #1

declare dso_local i32 @tpm_msleep(i32) #1

declare dso_local i32 @disable_interrupts(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
