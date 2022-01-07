; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_spi.c_tpm_tis_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_spi.c_tpm_tis_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.tpm_tis_spi_phy = type { i32, i32, %struct.spi_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_SPI_FRAMESIZE = common dso_local global i32 0, align 4
@tpm_spi_phy_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @tpm_tis_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.tpm_tis_spi_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tpm_tis_spi_phy* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.tpm_tis_spi_phy* %9, %struct.tpm_tis_spi_phy** %4, align 8
  %10 = load %struct.tpm_tis_spi_phy*, %struct.tpm_tis_spi_phy** %4, align 8
  %11 = icmp ne %struct.tpm_tis_spi_phy* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.tpm_tis_spi_phy*, %struct.tpm_tis_spi_phy** %4, align 8
  %18 = getelementptr inbounds %struct.tpm_tis_spi_phy, %struct.tpm_tis_spi_phy* %17, i32 0, i32 2
  store %struct.spi_device* %16, %struct.spi_device** %18, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 1
  %21 = load i32, i32* @MAX_SPI_FRAMESIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @devm_kmalloc(i32* %20, i32 %21, i32 %22)
  %24 = load %struct.tpm_tis_spi_phy*, %struct.tpm_tis_spi_phy** %4, align 8
  %25 = getelementptr inbounds %struct.tpm_tis_spi_phy, %struct.tpm_tis_spi_phy* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tpm_tis_spi_phy*, %struct.tpm_tis_spi_phy** %4, align 8
  %27 = getelementptr inbounds %struct.tpm_tis_spi_phy, %struct.tpm_tis_spi_phy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %15
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %50

33:                                               ; preds = %15
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 1
  %46 = load %struct.tpm_tis_spi_phy*, %struct.tpm_tis_spi_phy** %4, align 8
  %47 = getelementptr inbounds %struct.tpm_tis_spi_phy, %struct.tpm_tis_spi_phy* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @tpm_tis_core_init(i32* %45, i32* %47, i32 %48, i32* @tpm_spi_phy_ops, i32* null)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %43, %30, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.tpm_tis_spi_phy* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_kmalloc(i32*, i32, i32) #1

declare dso_local i32 @tpm_tis_core_init(i32*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
