; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_nsc.c_wait_for_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_nsc.c_wait_for_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_nsc_priv = type { i64 }

@NSC_STATUS = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@TPM_TIMEOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32, i32, i32*)* @wait_for_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_stat(%struct.tpm_chip* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tpm_nsc_priv*, align 8
  %11 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %13 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %12, i32 0, i32 0
  %14 = call %struct.tpm_nsc_priv* @dev_get_drvdata(i32* %13)
  store %struct.tpm_nsc_priv* %14, %struct.tpm_nsc_priv** %10, align 8
  %15 = load %struct.tpm_nsc_priv*, %struct.tpm_nsc_priv** %10, align 8
  %16 = getelementptr inbounds %struct.tpm_nsc_priv, %struct.tpm_nsc_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NSC_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @inb(i64 %19)
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %60

29:                                               ; preds = %4
  %30 = load i32, i32* @jiffies, align 4
  %31 = load i32, i32* @HZ, align 4
  %32 = mul nsw i32 10, %31
  %33 = add nsw i32 %30, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %52, %29
  %36 = load i32, i32* @TPM_TIMEOUT, align 4
  %37 = call i32 @msleep(i32 %36)
  %38 = load %struct.tpm_nsc_priv*, %struct.tpm_nsc_priv** %10, align 8
  %39 = getelementptr inbounds %struct.tpm_nsc_priv, %struct.tpm_nsc_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = call i32 @inb(i64 %41)
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %60

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* @jiffies, align 4
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @time_before(i32 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %35, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %50, %28
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.tpm_nsc_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
