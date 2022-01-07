; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_st33zp24.c_get_burstcount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_st33zp24.c_get_burstcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i64, i32 }
%struct.st33zp24_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64, i32*, i32)* }

@jiffies = common dso_local global i64 0, align 8
@TPM_STS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@TPM_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @get_burstcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_burstcount(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.st33zp24_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %10 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %9, i32 0, i32 1
  %11 = call %struct.st33zp24_dev* @dev_get_drvdata(i32* %10)
  store %struct.st33zp24_dev* %11, %struct.st33zp24_dev** %4, align 8
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %12, %15
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %64, %1
  %18 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %4, align 8
  %19 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %21, align 8
  %23 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %4, align 8
  %24 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @TPM_STS, align 8
  %27 = add nsw i64 %26, 1
  %28 = call i32 %22(i32 %25, i64 %27, i32* %8, i32 1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %72

34:                                               ; preds = %17
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %4, align 8
  %37 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %39, align 8
  %41 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %4, align 8
  %42 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* @TPM_STS, align 8
  %45 = add nsw i64 %44, 2
  %46 = call i32 %40(i32 %43, i64 %45, i32* %8, i32 1)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %72

52:                                               ; preds = %34
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 %53, 8
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %72

61:                                               ; preds = %52
  %62 = load i32, i32* @TPM_TIMEOUT, align 4
  %63 = call i32 @msleep(i32 %62)
  br label %64

64:                                               ; preds = %61
  %65 = load i64, i64* @jiffies, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i64 @time_before(i64 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %17, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %59, %49, %31
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.st33zp24_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
