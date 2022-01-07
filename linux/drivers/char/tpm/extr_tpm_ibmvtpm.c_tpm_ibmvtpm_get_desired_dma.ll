; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ibmvtpm.c_tpm_ibmvtpm_get_desired_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ibmvtpm.c_tpm_ibmvtpm_get_desired_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }
%struct.tpm_chip = type { i32 }
%struct.ibmvtpm_dev = type { i64 }

@CRQ_RES_BUF_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vio_dev*)* @tpm_ibmvtpm_get_desired_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tpm_ibmvtpm_get_desired_dma(%struct.vio_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vio_dev*, align 8
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca %struct.ibmvtpm_dev*, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %3, align 8
  %6 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %7 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %6, i32 0, i32 0
  %8 = call i8* @dev_get_drvdata(i32* %7)
  %9 = bitcast i8* %8 to %struct.tpm_chip*
  store %struct.tpm_chip* %9, %struct.tpm_chip** %4, align 8
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %11 = icmp ne %struct.tpm_chip* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 0
  %15 = call i8* @dev_get_drvdata(i32* %14)
  %16 = bitcast i8* %15 to %struct.ibmvtpm_dev*
  store %struct.ibmvtpm_dev* %16, %struct.ibmvtpm_dev** %5, align 8
  br label %21

17:                                               ; preds = %1
  %18 = load i64, i64* @CRQ_RES_BUF_SIZE, align 8
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %2, align 8
  br label %27

21:                                               ; preds = %12
  %22 = load i64, i64* @CRQ_RES_BUF_SIZE, align 8
  %23 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %5, align 8
  %24 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %21, %17
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

declare dso_local i8* @dev_get_drvdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
