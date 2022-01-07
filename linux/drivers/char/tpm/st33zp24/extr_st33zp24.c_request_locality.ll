; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_st33zp24.c_request_locality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_st33zp24.c_request_locality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i64, i32 }
%struct.st33zp24_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i32, i32*, i32)* }

@TPM_ACCESS_REQUEST_USE = common dso_local global i32 0, align 4
@TPM_ACCESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TPM_TIMEOUT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @request_locality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_locality(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.st33zp24_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %8 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %9 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %8, i32 0, i32 1
  %10 = call %struct.st33zp24_dev* @dev_get_drvdata(i32* %9)
  store %struct.st33zp24_dev* %10, %struct.st33zp24_dev** %4, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %12 = call i64 @check_locality(%struct.tpm_chip* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %4, align 8
  %16 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load i32, i32* @TPM_ACCESS_REQUEST_USE, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %4, align 8
  %21 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64 (i32, i32, i32*, i32)*, i64 (i32, i32, i32*, i32)** %23, align 8
  %25 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %4, align 8
  %26 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TPM_ACCESS, align 4
  %29 = call i64 %24(i32 %27, i32 %28, i32* %7, i32 1)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %60

35:                                               ; preds = %18
  %36 = load i64, i64* @jiffies, align 8
  %37 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %38 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %36, %39
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %52, %35
  %42 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %43 = call i64 @check_locality(%struct.tpm_chip* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %4, align 8
  %47 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %2, align 4
  br label %60

49:                                               ; preds = %41
  %50 = load i32, i32* @TPM_TIMEOUT, align 4
  %51 = call i32 @msleep(i32 %50)
  br label %52

52:                                               ; preds = %49
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @time_before(i64 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %41, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @EACCES, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %45, %32, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.st33zp24_dev* @dev_get_drvdata(i32*) #1

declare dso_local i64 @check_locality(%struct.tpm_chip*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
