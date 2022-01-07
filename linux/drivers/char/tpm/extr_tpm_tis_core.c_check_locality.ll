; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_check_locality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_check_locality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_tis_data = type { i32 }

@TPM_ACCESS_ACTIVE_LOCALITY = common dso_local global i32 0, align 4
@TPM_ACCESS_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32)* @check_locality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_locality(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_tis_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %10 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %9, i32 0, i32 0
  %11 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %10)
  store %struct.tpm_tis_data* %11, %struct.tpm_tis_data** %6, align 8
  %12 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @TPM_ACCESS(i32 %13)
  %15 = call i32 @tpm_tis_read8(%struct.tpm_tis_data* %12, i32 %14, i32* %8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @TPM_ACCESS_ACTIVE_LOCALITY, align 4
  %22 = load i32, i32* @TPM_ACCESS_VALID, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* @TPM_ACCESS_ACTIVE_LOCALITY, align 4
  %26 = load i32, i32* @TPM_ACCESS_VALID, align 4
  %27 = or i32 %25, %26
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %6, align 8
  %32 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 1, i32* %3, align 4
  br label %34

33:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_tis_read8(%struct.tpm_tis_data*, i32, i32*) #1

declare dso_local i32 @TPM_ACCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
