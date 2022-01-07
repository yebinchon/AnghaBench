; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_probe_irq_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_probe_irq_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tpm_tis_data = type { i32, i32, i32 }

@tis_int_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to request irq: %d for probe\0A\00", align 1
@TPM_GLOBAL_INT_ENABLE = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32, i32, i32)* @tpm_tis_probe_irq_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_probe_irq_single(%struct.tpm_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tpm_tis_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %15 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %14, i32 0, i32 1
  %16 = call %struct.tpm_tis_data* @dev_get_drvdata(%struct.TYPE_4__* %15)
  store %struct.tpm_tis_data* %16, %struct.tpm_tis_data** %10, align 8
  %17 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %18 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @tis_int_handler, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %25 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %24, i32 0, i32 1
  %26 = call i32 @dev_name(%struct.TYPE_4__* %25)
  %27 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %28 = call i64 @devm_request_irq(i32 %20, i32 %21, i32 %22, i32 %23, i32 %26, %struct.tpm_chip* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %32 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @dev_info(%struct.TYPE_4__* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %5, align 4
  br label %128

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %38 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %40 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %41 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @TPM_INT_VECTOR(i32 %42)
  %44 = call i32 @tpm_tis_read8(%struct.tpm_tis_data* %39, i32 %43, i32* %11)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %128

49:                                               ; preds = %35
  %50 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %51 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %52 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @TPM_INT_VECTOR(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @tpm_tis_write8(%struct.tpm_tis_data* %50, i32 %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  br label %128

61:                                               ; preds = %49
  %62 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %63 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %64 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @TPM_INT_STATUS(i32 %65)
  %67 = call i32 @tpm_tis_read32(%struct.tpm_tis_data* %62, i32 %66, i32* %13)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %128

72:                                               ; preds = %61
  %73 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %74 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %75 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @TPM_INT_STATUS(i32 %76)
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @tpm_tis_write32(%struct.tpm_tis_data* %73, i32 %77, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %128

84:                                               ; preds = %72
  %85 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %86 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %87 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @TPM_INT_ENABLE(i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @TPM_GLOBAL_INT_ENABLE, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @tpm_tis_write32(%struct.tpm_tis_data* %85, i32 %89, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %128

98:                                               ; preds = %84
  %99 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %100 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  %101 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %102 = call i32 @tpm_tis_gen_interrupt(%struct.tpm_chip* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %5, align 4
  br label %128

107:                                              ; preds = %98
  %108 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %109 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TPM_CHIP_FLAG_IRQ, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %107
  %115 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %10, align 8
  %118 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @TPM_INT_VECTOR(i32 %119)
  %121 = call i32 @tpm_tis_write8(%struct.tpm_tis_data* %115, i32 %116, i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %5, align 4
  br label %128

126:                                              ; preds = %114
  store i32 1, i32* %5, align 4
  br label %128

127:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %127, %126, %124, %105, %96, %82, %70, %59, %47, %30
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(%struct.TYPE_4__*) #1

declare dso_local i64 @devm_request_irq(i32, i32, i32, i32, i32, %struct.tpm_chip*) #1

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @tpm_tis_read8(%struct.tpm_tis_data*, i32, i32*) #1

declare dso_local i32 @TPM_INT_VECTOR(i32) #1

declare dso_local i32 @tpm_tis_write8(%struct.tpm_tis_data*, i32, i32) #1

declare dso_local i32 @tpm_tis_read32(%struct.tpm_tis_data*, i32, i32*) #1

declare dso_local i32 @TPM_INT_STATUS(i32) #1

declare dso_local i32 @tpm_tis_write32(%struct.tpm_tis_data*, i32, i32) #1

declare dso_local i32 @TPM_INT_ENABLE(i32) #1

declare dso_local i32 @tpm_tis_gen_interrupt(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
