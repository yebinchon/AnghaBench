; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-spi.c_regmap_spi_gather_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-spi.c_regmap_spi_gather_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64)* @regmap_spi_gather_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_spi_gather_write(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.spi_device*, align 8
  %13 = alloca %struct.spi_message, align 4
  %14 = alloca [2 x %struct.spi_transfer], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.device*
  store %struct.device* %16, %struct.device** %11, align 8
  %17 = load %struct.device*, %struct.device** %11, align 8
  %18 = call %struct.spi_device* @to_spi_device(%struct.device* %17)
  store %struct.spi_device* %18, %struct.spi_device** %12, align 8
  %19 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %20, align 16
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 1
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i64 1
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 0
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %25, align 16
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 1
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %27, align 8
  %29 = call i32 @spi_message_init(%struct.spi_message* %13)
  %30 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %31 = call i32 @spi_message_add_tail(%struct.spi_transfer* %30, %struct.spi_message* %13)
  %32 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %33 = call i32 @spi_message_add_tail(%struct.spi_transfer* %32, %struct.spi_message* %13)
  %34 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %35 = call i32 @spi_sync(%struct.spi_device* %34, %struct.spi_message* %13)
  ret i32 %35
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
