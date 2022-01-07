; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ibmvtpm.c_tpm_ibmvtpm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ibmvtpm.c_tpm_ibmvtpm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32, i32, i32 }
%struct.tpm_chip = type { i32 }
%struct.ibmvtpm_dev = type { %struct.ibmvtpm_dev*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@H_FREE_CRQ = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i32 0, align 4
@CRQ_RES_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @tpm_ibmvtpm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_ibmvtpm_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.ibmvtpm_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %6 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %7 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %6, i32 0, i32 0
  %8 = call i8* @dev_get_drvdata(i32* %7)
  %9 = bitcast i8* %8 to %struct.tpm_chip*
  store %struct.tpm_chip* %9, %struct.tpm_chip** %3, align 8
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %11 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %10, i32 0, i32 0
  %12 = call i8* @dev_get_drvdata(i32* %11)
  %13 = bitcast i8* %12 to %struct.ibmvtpm_dev*
  store %struct.ibmvtpm_dev* %13, %struct.ibmvtpm_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %15 = call i32 @tpm_chip_unregister(%struct.tpm_chip* %14)
  %16 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %17 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.ibmvtpm_dev* %19)
  br label %21

21:                                               ; preds = %40, %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @msleep(i32 100)
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* @H_FREE_CRQ, align 4
  %28 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %29 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @plpar_hcall_norets(i32 %27, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @H_BUSY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @H_IS_LONG_BUSY(i32 %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ true, %32 ], [ %39, %36 ]
  br i1 %41, label %21, label %42

42:                                               ; preds = %40
  %43 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %44 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %47 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CRQ_RES_BUF_SIZE, align 4
  %50 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %51 = call i32 @dma_unmap_single(i32 %45, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %53 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @free_page(i64 %55)
  %57 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %58 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %57, i32 0, i32 0
  %59 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %58, align 8
  %60 = icmp ne %struct.ibmvtpm_dev* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %42
  %62 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %63 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %66 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %69 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %72 = call i32 @dma_unmap_single(i32 %64, i32 %67, i32 %70, i32 %71)
  %73 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %74 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %73, i32 0, i32 0
  %75 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %74, align 8
  %76 = call i32 @kfree(%struct.ibmvtpm_dev* %75)
  br label %77

77:                                               ; preds = %61, %42
  %78 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %79 = call i32 @kfree(%struct.ibmvtpm_dev* %78)
  %80 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %81 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %80, i32 0, i32 0
  %82 = call i32 @dev_set_drvdata(i32* %81, i32* null)
  ret i32 0
}

declare dso_local i8* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_chip_unregister(%struct.tpm_chip*) #1

declare dso_local i32 @free_irq(i32, %struct.ibmvtpm_dev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @plpar_hcall_norets(i32, i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.ibmvtpm_dev*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
