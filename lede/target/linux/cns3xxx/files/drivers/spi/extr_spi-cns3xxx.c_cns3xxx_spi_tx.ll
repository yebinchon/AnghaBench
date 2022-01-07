; ModuleID = '/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/spi/extr_spi-cns3xxx.c_cns3xxx_spi_tx.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/spi/extr_spi-cns3xxx.c_cns3xxx_spi_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cns3xxx_spi = type { i32 }

@SPI_TRANSMIT_CONTROL_REG = common dso_local global i32 0, align 4
@SPI_TRANSMIT_BUFFER_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cns3xxx_spi_tx(%struct.cns3xxx_spi* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cns3xxx_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cns3xxx_spi* %0, %struct.cns3xxx_spi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %14, %4
  %10 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %11 = call i32 @cns3xxx_spi_bus_idle(%struct.cns3xxx_spi* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %9

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %21, %15
  %17 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %18 = call i32 @cns3xxx_spi_tx_buffer_empty(%struct.cns3xxx_spi* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %16

22:                                               ; preds = %16
  %23 = load i32, i32* @SPI_TRANSMIT_CONTROL_REG, align 4
  %24 = and i32 %23, -8
  store i32 %24, i32* @SPI_TRANSMIT_CONTROL_REG, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 3
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 1
  %29 = shl i32 %28, 2
  %30 = or i32 %26, %29
  %31 = load i32, i32* @SPI_TRANSMIT_CONTROL_REG, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* @SPI_TRANSMIT_CONTROL_REG, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* @SPI_TRANSMIT_BUFFER_REG, align 4
  ret i32 1
}

declare dso_local i32 @cns3xxx_spi_bus_idle(%struct.cns3xxx_spi*) #1

declare dso_local i32 @cns3xxx_spi_tx_buffer_empty(%struct.cns3xxx_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
