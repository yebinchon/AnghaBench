; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_spi.c_st33zp24_spi_evaluate_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_spi.c_st33zp24_spi_evaluate_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st33zp24_spi_phy = type { i32 }

@MAX_SPI_LATENCY = common dso_local global i32 0, align 4
@TPM_INTF_CAPABILITY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @st33zp24_spi_evaluate_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st33zp24_spi_evaluate_latency(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.st33zp24_spi_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.st33zp24_spi_phy*
  store %struct.st33zp24_spi_phy* %9, %struct.st33zp24_spi_phy** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %19, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAX_SPI_LATENCY, align 4
  %16 = icmp slt i32 %14, %15
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %4, align 8
  %22 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @TPM_INTF_CAPABILITY, align 4
  %25 = call i32 @st33zp24_spi_read8_reg(i8* %23, i32 %24, i32* %7, i32 1)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %10

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @MAX_SPI_LATENCY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %37, %31
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @st33zp24_spi_read8_reg(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
