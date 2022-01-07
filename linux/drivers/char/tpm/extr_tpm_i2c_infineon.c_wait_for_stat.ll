; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_i2c_infineon.c_wait_for_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_i2c_infineon.c_wait_for_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@TPM_TIMEOUT_US_LOW = common dso_local global i32 0, align 4
@TPM_TIMEOUT_US_HI = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32, i64, i32*)* @wait_for_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_stat(%struct.tpm_chip* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %12 = call i32 @tpm_tis_i2c_status(%struct.tpm_chip* %11)
  %13 = load i32*, i32** %9, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 255
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %52

25:                                               ; preds = %17, %4
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %44, %25
  %30 = load i32, i32* @TPM_TIMEOUT_US_LOW, align 4
  %31 = load i32, i32* @TPM_TIMEOUT_US_HI, align 4
  %32 = call i32 @usleep_range(i32 %30, i32 %31)
  %33 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %34 = call i32 @tpm_tis_i2c_status(%struct.tpm_chip* %33)
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %52

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @time_before(i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %29, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ETIME, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %42, %24
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @tpm_tis_i2c_status(%struct.tpm_chip*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
