; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx.c_do_spi_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx.c_do_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }

@AR71XX_SPI_IOC_CS0 = common dso_local global i32 0, align 4
@AR71XX_SPI_IOC_CS1 = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@spi_clk_low = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @do_spi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_spi_init(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load i32, i32* @AR71XX_SPI_IOC_CS0, align 4
  %5 = load i32, i32* @AR71XX_SPI_IOC_CS1, align 4
  %6 = or i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SPI_CS_HIGH, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @AR71XX_SPI_IOC_CS1, align 4
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @AR71XX_SPI_IOC_CS0, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load i32, i32* %3, align 4
  %25 = xor i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* @spi_clk_low, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
