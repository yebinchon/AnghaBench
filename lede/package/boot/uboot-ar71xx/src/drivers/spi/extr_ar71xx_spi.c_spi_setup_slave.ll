; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/spi/extr_ar71xx_spi.c_spi_setup_slave.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/spi/extr_ar71xx_spi.c_spi_setup_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_slave = type { i32, i32 }
%struct.ar71xx_spi_slave = type { i32, %struct.spi_slave }

@.str = private unnamed_addr constant [28 x i8] c"ar71xx_spi: spi_setup_slave\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" ---> out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spi_slave* @spi_setup_slave(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.spi_slave*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ar71xx_spi_slave*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i32 @PRINTD(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ugt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %4
  store %struct.spi_slave* null, %struct.spi_slave** %5, align 8
  br label %38

18:                                               ; preds = %14
  %19 = call %struct.ar71xx_spi_slave* @malloc(i32 12)
  store %struct.ar71xx_spi_slave* %19, %struct.ar71xx_spi_slave** %10, align 8
  %20 = load %struct.ar71xx_spi_slave*, %struct.ar71xx_spi_slave** %10, align 8
  %21 = icmp ne %struct.ar71xx_spi_slave* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store %struct.spi_slave* null, %struct.spi_slave** %5, align 8
  br label %38

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ar71xx_spi_slave*, %struct.ar71xx_spi_slave** %10, align 8
  %26 = getelementptr inbounds %struct.ar71xx_spi_slave, %struct.ar71xx_spi_slave* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.spi_slave, %struct.spi_slave* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ar71xx_spi_slave*, %struct.ar71xx_spi_slave** %10, align 8
  %30 = getelementptr inbounds %struct.ar71xx_spi_slave, %struct.ar71xx_spi_slave* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.spi_slave, %struct.spi_slave* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.ar71xx_spi_slave*, %struct.ar71xx_spi_slave** %10, align 8
  %34 = getelementptr inbounds %struct.ar71xx_spi_slave, %struct.ar71xx_spi_slave* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = call i32 @PRINTD(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.ar71xx_spi_slave*, %struct.ar71xx_spi_slave** %10, align 8
  %37 = getelementptr inbounds %struct.ar71xx_spi_slave, %struct.ar71xx_spi_slave* %36, i32 0, i32 1
  store %struct.spi_slave* %37, %struct.spi_slave** %5, align 8
  br label %38

38:                                               ; preds = %23, %22, %17
  %39 = load %struct.spi_slave*, %struct.spi_slave** %5, align 8
  ret %struct.spi_slave* %39
}

declare dso_local i32 @PRINTD(i8*) #1

declare dso_local %struct.ar71xx_spi_slave* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
