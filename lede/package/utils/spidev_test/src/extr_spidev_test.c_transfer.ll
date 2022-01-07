; ModuleID = '/home/carl/AnghaBench/lede/package/utils/spidev_test/src/extr_spidev_test.c_transfer.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/spidev_test/src/extr_spidev_test.c_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_ioc_transfer = type { i64, i64, i64, i32, i32, i32, i32, i32 }

@bits = common dso_local global i32 0, align 4
@speed = common dso_local global i32 0, align 4
@delay = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"can't send spi message\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i64)* @transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transfer(i32 %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_ioc_transfer, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 0
  %12 = load i32*, i32** %6, align 8
  %13 = ptrtoint i32* %12 to i64
  store i64 %13, i64* %11, align 8
  %14 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 1
  %15 = load i32*, i32** %7, align 8
  %16 = ptrtoint i32* %15 to i64
  store i64 %16, i64* %14, align 8
  %17 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 2
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 3
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 4
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 5
  %22 = load i32, i32* @bits, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 6
  %24 = load i32, i32* @speed, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 7
  %26 = load i32, i32* @delay, align 4
  store i32 %26, i32* %25, align 8
  %27 = load i32, i32* @mode, align 4
  %28 = load i32, i32* @SPI_TX_QUAD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 3
  store i32 4, i32* %32, align 8
  br label %41

33:                                               ; preds = %4
  %34 = load i32, i32* @mode, align 4
  %35 = load i32, i32* @SPI_TX_DUAL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 3
  store i32 2, i32* %39, align 8
  br label %40

40:                                               ; preds = %38, %33
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* @mode, align 4
  %43 = load i32, i32* @SPI_RX_QUAD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 4
  store i32 4, i32* %47, align 4
  br label %56

48:                                               ; preds = %41
  %49 = load i32, i32* @mode, align 4
  %50 = load i32, i32* @SPI_RX_DUAL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 4
  store i32 2, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %48
  br label %56

56:                                               ; preds = %55, %46
  %57 = load i32, i32* @mode, align 4
  %58 = load i32, i32* @SPI_LOOP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @mode, align 4
  %63 = load i32, i32* @SPI_TX_QUAD, align 4
  %64 = load i32, i32* @SPI_TX_DUAL, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 1
  store i64 0, i64* %69, align 8
  br label %80

70:                                               ; preds = %61
  %71 = load i32, i32* @mode, align 4
  %72 = load i32, i32* @SPI_RX_QUAD, align 4
  %73 = load i32, i32* @SPI_RX_DUAL, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %10, i32 0, i32 0
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %77, %70
  br label %80

80:                                               ; preds = %79, %68
  br label %81

81:                                               ; preds = %80, %56
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @SPI_IOC_MESSAGE(i32 1)
  %84 = call i32 @ioctl(i32 %82, i32 %83, %struct.spi_ioc_transfer* %10)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = call i32 @pabort(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %81
  %90 = load i64, i64* @verbose, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32*, i32** %6, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @hex_dump(i32* %93, i64 %94, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i32*, i32** %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @hex_dump(i32* %97, i64 %98, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.spi_ioc_transfer*) #1

declare dso_local i32 @SPI_IOC_MESSAGE(i32) #1

declare dso_local i32 @pabort(i8*) #1

declare dso_local i32 @hex_dump(i32*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
