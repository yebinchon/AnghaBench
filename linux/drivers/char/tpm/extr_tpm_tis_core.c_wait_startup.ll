; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_wait_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_wait_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i64, i32 }
%struct.tpm_tis_data = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@TPM_ACCESS_VALID = common dso_local global i32 0, align 4
@TPM_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32)* @wait_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_startup(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_tis_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %11 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %10, i32 0, i32 1
  %12 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %11)
  store %struct.tpm_tis_data* %12, %struct.tpm_tis_data** %6, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %15 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %36, %2
  %19 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @TPM_ACCESS(i32 %20)
  %22 = call i32 @tpm_tis_read8(%struct.tpm_tis_data* %19, i32 %21, i32* %9)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %42

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @TPM_ACCESS_VALID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %42

33:                                               ; preds = %27
  %34 = load i32, i32* @TPM_TIMEOUT, align 4
  %35 = call i32 @tpm_msleep(i32 %34)
  br label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @time_before(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %18, label %41

41:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %32, %25
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_tis_read8(%struct.tpm_tis_data*, i32, i32*) #1

declare dso_local i32 @TPM_ACCESS(i32) #1

declare dso_local i32 @tpm_msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
