; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_nsc.c_nsc_wait_for_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_nsc.c_nsc_wait_for_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_nsc_priv = type { i64 }

@NSC_STATUS = common dso_local global i64 0, align 8
@NSC_STATUS_OBF = common dso_local global i32 0, align 4
@NSC_DATA = common dso_local global i64 0, align 8
@NSC_STATUS_RDY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TPM_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"wait for ready failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @nsc_wait_for_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsc_wait_for_ready(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.tpm_nsc_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %7 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %8 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %7, i32 0, i32 0
  %9 = call %struct.tpm_nsc_priv* @dev_get_drvdata(i32* %8)
  store %struct.tpm_nsc_priv* %9, %struct.tpm_nsc_priv** %4, align 8
  %10 = load %struct.tpm_nsc_priv*, %struct.tpm_nsc_priv** %4, align 8
  %11 = getelementptr inbounds %struct.tpm_nsc_priv, %struct.tpm_nsc_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NSC_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @inb(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NSC_STATUS_OBF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.tpm_nsc_priv*, %struct.tpm_nsc_priv** %4, align 8
  %22 = getelementptr inbounds %struct.tpm_nsc_priv, %struct.tpm_nsc_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NSC_DATA, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @inb(i64 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %1
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NSC_STATUS_RDY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %75

33:                                               ; preds = %27
  %34 = load i32, i32* @jiffies, align 4
  %35 = add nsw i32 %34, 100
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %64, %33
  %38 = load i32, i32* @TPM_TIMEOUT, align 4
  %39 = call i32 @msleep(i32 %38)
  %40 = load %struct.tpm_nsc_priv*, %struct.tpm_nsc_priv** %4, align 8
  %41 = getelementptr inbounds %struct.tpm_nsc_priv, %struct.tpm_nsc_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NSC_STATUS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @inb(i64 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @NSC_STATUS_OBF, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = load %struct.tpm_nsc_priv*, %struct.tpm_nsc_priv** %4, align 8
  %52 = getelementptr inbounds %struct.tpm_nsc_priv, %struct.tpm_nsc_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NSC_DATA, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @inb(i64 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %50, %37
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @NSC_STATUS_RDY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %75

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* @jiffies, align 4
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @time_before(i32 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %37, label %69

69:                                               ; preds = %64
  %70 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %71 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %70, i32 0, i32 0
  %72 = call i32 @dev_info(i32* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %62, %32
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.tpm_nsc_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
