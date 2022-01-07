; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx-cpld.c_rb4xx_cpld_write_cfg.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx-cpld.c_rb4xx_cpld_write_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb4xx_cpld = type { i32 }
%struct.spi_transfer = type { i8*, i32 }
%struct.spi_message = type { i32 }

@CPLD_CMD_WRITE_CFG = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rb4xx_cpld*, i8)* @rb4xx_cpld_write_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb4xx_cpld_write_cfg(%struct.rb4xx_cpld* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.rb4xx_cpld*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [1 x %struct.spi_transfer], align 16
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca [2 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.rb4xx_cpld* %0, %struct.rb4xx_cpld** %3, align 8
  store i8 %1, i8* %4, align 1
  %9 = call i32 @spi_message_init(%struct.spi_message* %6)
  %10 = bitcast [1 x %struct.spi_transfer]* %5 to %struct.spi_transfer**
  %11 = call i32 @memset(%struct.spi_transfer** %10, i32 0, i32 16)
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %13 = getelementptr inbounds [1 x %struct.spi_transfer], [1 x %struct.spi_transfer]* %5, i64 0, i64 0
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 16
  %15 = getelementptr inbounds [1 x %struct.spi_transfer], [1 x %struct.spi_transfer]* %5, i64 0, i64 0
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 1
  store i32 2, i32* %16, align 8
  %17 = getelementptr inbounds [1 x %struct.spi_transfer], [1 x %struct.spi_transfer]* %5, i64 0, i64 0
  %18 = call i32 @spi_message_add_tail(%struct.spi_transfer* %17, %struct.spi_message* %6)
  %19 = load i8, i8* @CPLD_CMD_WRITE_CFG, align 1
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 %19, i8* %20, align 1
  %21 = load i8, i8* %4, align 1
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 %21, i8* %22, align 1
  %23 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %3, align 8
  %24 = getelementptr inbounds %struct.rb4xx_cpld, %struct.rb4xx_cpld* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @spi_sync(i32 %25, %struct.spi_message* %6)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  ret i32 %27
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer**, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
