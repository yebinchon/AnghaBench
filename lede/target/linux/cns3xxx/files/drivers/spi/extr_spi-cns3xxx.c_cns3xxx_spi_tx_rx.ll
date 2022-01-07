; ModuleID = '/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/spi/extr_spi-cns3xxx.c_cns3xxx_spi_tx_rx.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/spi/extr_spi-cns3xxx.c_cns3xxx_spi_tx_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cns3xxx_spi = type { i32 }

@SPI_TRANSMIT_CONTROL_REG = common dso_local global i32 0, align 4
@SPI_TRANSMIT_BUFFER_REG = common dso_local global i32 0, align 4
@SPI_RECEIVE_CONTROL_REG = common dso_local global i32 0, align 4
@SPI_RECEIVE_BUFFER_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cns3xxx_spi_tx_rx(%struct.cns3xxx_spi* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cns3xxx_spi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cns3xxx_spi* %0, %struct.cns3xxx_spi** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  br label %14

14:                                               ; preds = %19, %5
  %15 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %7, align 8
  %16 = call i32 @cns3xxx_spi_bus_idle(%struct.cns3xxx_spi* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %14

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %26, %20
  %22 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %7, align 8
  %23 = call i32 @cns3xxx_spi_tx_buffer_empty(%struct.cns3xxx_spi* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %21

27:                                               ; preds = %21
  %28 = load i32, i32* @SPI_TRANSMIT_CONTROL_REG, align 4
  %29 = and i32 %28, -8
  store i32 %29, i32* @SPI_TRANSMIT_CONTROL_REG, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 3
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 1
  %34 = shl i32 %33, 2
  %35 = or i32 %31, %34
  %36 = load i32, i32* @SPI_TRANSMIT_CONTROL_REG, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* @SPI_TRANSMIT_CONTROL_REG, align 4
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* @SPI_TRANSMIT_BUFFER_REG, align 4
  br label %39

39:                                               ; preds = %44, %27
  %40 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %7, align 8
  %41 = call i32 @cns3xxx_spi_rx_buffer_full(%struct.cns3xxx_spi* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %39

45:                                               ; preds = %39
  %46 = load i32, i32* @SPI_RECEIVE_CONTROL_REG, align 4
  %47 = and i32 %46, 3
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* @SPI_RECEIVE_CONTROL_REG, align 4
  %49 = and i32 %48, 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* @SPI_RECEIVE_BUFFER_REG, align 4
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %45
  store i32 0, i32* %6, align 4
  br label %64

63:                                               ; preds = %58
  store i32 1, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @cns3xxx_spi_bus_idle(%struct.cns3xxx_spi*) #1

declare dso_local i32 @cns3xxx_spi_tx_buffer_empty(%struct.cns3xxx_spi*) #1

declare dso_local i32 @cns3xxx_spi_rx_buffer_full(%struct.cns3xxx_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
